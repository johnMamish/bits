#!/usr/bin/env python3

import ftd2xx as ft
import time
import sys
import numpy as np

from collections import deque

import os
import threading
import queue

import argparse

# New: Import PyQt for our GUI display
from PyQt5 import QtWidgets, QtGui, QtCore

# Import from our utils file in the same dir
from serialcam_ft232h_utils import *

# This thread reads from the ft232 and directly sends raw binary chunks to a thread that
# combines them into frames
# To keep things fast, this thread doesn't do any processing on the data at all.
def ft232h_read_thread(raw_binary_queue, write_command_queue=None, sn_prefix=b'fsplit'):
    # Find the ftdi device to open
    try:
        devlist = ft.listDevices()
        print(f"Read Thread: Found FT232H devices with the following serial numbers:")
        print(devlist)
        matching_sns = [sn for sn in devlist if (sn.startswith(sn_prefix))]
        if (len(matching_sns) == 0):
            print(f"Read Thread: Couldn't find an FT232H board with a serial number starting with {sn_prefix}")
            sys.exit(-1)
        else:
            ftdev_id = devlist.index(matching_sns[0])
            print(f"Read Thread: Choosing device number {ftdev_id} with serial number {matching_sns[0]}")
    except ValueError:
        raise Exception("Read Thread: No board found!")

    # open and configure the device
    print("Read Thread: Opening device")
    ftdev = ft.open(ftdev_id)
    print("Read Thread: resetting device")
    ftdev.resetDevice()
    print("Read Thread: setting modes")
    ftdev.setBitMode(0xff, 0x00)
    ftdev.setTimeouts(10, 10)  # in ms
    ftdev.setUSBParameters(64 * 1024, 64 * 1024)  # set rx, tx buffer size in bytes
    ftdev.setFlowControl(ft.defines.FLOW_RTS_CTS, 0, 0)

    # Read data
    stats = DataRateStats()
    last_printed_time = time.time()
    STATS_PRINT_RATE = 0.5
    while True:
        # Try to read from the ft232; send the resulting data to the reader thread
        print("read")
        chunk = ftdev.read(1 * 1024 * 1024)
        raw_binary_queue.put(chunk)

        # Check to see if there is any data to send down
        if (write_command_queue is not None):
            pass
            #try:
                #txdata = write_command_queue.get()
                #print(f"sending {txdata} to FPGA")
                #ftdev.write(txdata)
                #except queue.Empty as e:
                #pass

        # update data reading stats
        stats.register_bytes_read(len(chunk))

        # print data rate if we havent printed in a little bit
        if ((time.time() - last_printed_time) > STATS_PRINT_RATE):
            data_rate, total_datas = stats.get_results()
            #print(f"Read Thread: reading from camera at {data_rate/1e6:6.2f}MB/s. {total_datas/1e6:8.2}MB so far")
            last_printed_time = time.time()

# This function needs the display window so that it can trigger a redraw
def image_decoder_thread_func(raw_binary_queue, image_output_queue, request_input_queue, window, width=640, height=480):
    accum = CameraDataAccumulator(width=width, height=height)
    tstart = time.time()
    accumulated_chunks = np.empty((0), dtype=np.uint8)

    recorder = RecordingManager()
    fps_stats = DataRateStats()
    data_rate_stats = DataRateStats()
    do_write = True
    while True:
        chunk = raw_binary_queue.get()
        accum.process_chunk(chunk)

        fps, total_frames = fps_stats.get_results()
        bps, total_b = data_rate_stats.get_results()

        while True:
            images = accum.get_image()
            if (images is None):
                break

            # Handle any current or new requests we recieved.
            # Right now, we only service requests when we get a new image.
            if (not recorder.is_active()):
                try:
                    req = request_input_queue.get_nowait()
                    recorder.start_recording_request(req)
                except queue.Empty:
                    pass

            recorder.save_frames(images)
            image = np.hstack(images)
            image_output_queue.put(image)
            fps_stats.register_bytes_read(1)

            status_str = (f"FPS: {fps:7.2f}  |  Data rate: {bps/1e6:7.2f}MB/s.          " +
                          f"cam 0 min/max = ({np.min(images[0])}, {np.max(images[0])})  |  " +
                          f"cam 1 min/max = ({np.min(images[1])}, {np.max(images[1])})")
            window.update_status(status_str)

        data_rate_stats.register_bytes_read(len(chunk))


        window.new_image_received.emit()

# QDialog for "capture frames"
class CaptureDialog(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Capture Settings")

        layout = QtWidgets.QFormLayout(self)

        self.frames_spin = QtWidgets.QSpinBox()
        self.frames_spin.setValue(1)

        self.format_combo = QtWidgets.QComboBox()
        self.format_combo.addItems(["binary", "numpy", "pbm", "png"])

        now = time.localtime()
        default_filename = time.strftime("capture-%Y-%m-%d_%H-%M-%S", now)
        self.filename_edit = QtWidgets.QLineEdit(default_filename)

        self.seperate_cams_checkbox = QtWidgets.QCheckBox()
        self.do_subdirectory_checkbox = QtWidgets.QCheckBox()

        layout.addRow("Number of frames:", self.frames_spin)
        layout.addRow("Capture format:", self.format_combo)
        layout.addRow("Save cameras seperately:", self.seperate_cams_checkbox)
        layout.addRow("Save in new subdir:", self.do_subdirectory_checkbox)
        layout.addRow("Filename:", self.filename_edit)

        btns = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel)
        btns.accepted.connect(self.accept)
        btns.rejected.connect(self.reject)
        layout.addRow(btns)

    def get_values(self):
        return {
            "frames": self.frames_spin.value(),
            "format": self.format_combo.currentText(),
            "filename": self.filename_edit.text(),
            "seperate_cameras": self.seperate_cams_checkbox.isChecked(),
            "subdirectory": self.do_subdirectory_checkbox.isChecked()
        }

#
#
class ViewOptionsDialog(QtWidgets.QDialog):
    def __init__(self, current_scale=2, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Viewer Options")
        layout = QtWidgets.QFormLayout(self)

        self.scale_edit = QtWidgets.QLineEdit(str(current_scale))
        layout.addRow("View scale factor:", self.scale_edit)

        btns = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel)
        btns.accepted.connect(self.accept)
        btns.rejected.connect(self.reject)
        layout.addRow(btns)

    def get_values(self):
        try:
            scale = float(self.scale_edit.text())
        except ValueError:
            scale = None
        return {
            "scale": scale
        }

class ViewOptionsDialog(QtWidgets.QDialog):
    def __init__(self, current_scale=2, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Viewer Options")
        layout = QtWidgets.QFormLayout(self)

        self.scale_edit = QtWidgets.QLineEdit(str(current_scale))
        layout.addRow("View scale factor:", self.scale_edit)

        btns = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel)
        btns.accepted.connect(self.accept)
        btns.rejected.connect(self.reject)
        layout.addRow(btns)

    def get_values(self):
        try:
            scale = float(self.scale_edit.text())
        except ValueError:
            scale = None
        return { "scale": scale }

class CommandWriteDialog(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Command Write")
        layout = QtWidgets.QFormLayout(self)

        self.command_address = QtWidgets.QLineEdit()
        layout.addRow("Command address (hex):", self.command_address)

        self.command_data = QtWidgets.QLineEdit()
        layout.addRow("Command data (hex):", self.command_data)

        btns = QtWidgets.QDialogButtonBox()
        write_btn = btns.addButton("Write", QtWidgets.QDialogButtonBox.AcceptRole)
        cancel_btn = btns.addButton(QtWidgets.QDialogButtonBox.Cancel)

        btns.accepted.connect(self.accept)
        btns.rejected.connect(self.reject)
        layout.addRow(btns)

    def get_values(self):
        try:
            addr_bytes = int(self.command_address.text(), 16).to_bytes(2, 'little')
            data_bytes = int(self.command_data.text(), 16).to_bytes(4, 'little')
        except ValueError:
            QtWidgets.QMessageBox.warning(self, "Invalid Input",
                                          "addr must be 2 bytes of hex and data must be 4 bytes of hex")
            return None

        return {
            "address_bytes": addr_bytes,
            "data_bytes": data_bytes
        }

# This class displays recieved data in a qt window.
# Images are passed in through the 'image_queue'; whenever something pushes to the image queue, a
# redraw should be manually requested through the
#     window.new_image_received.emit()
# Signal
class ImageDisplayWindow(QtWidgets.QMainWindow):
    new_image_received = QtCore.pyqtSignal()
    image_scale: float = 1.0

    def __init__(self, image_queue, command_queue, write_command_queue, parent=None):
        """
        this window reads numpy arrays from image_queue containing images to display.
        Commands are sent from 'command_queue' to the different interface threads (the ft232
        reader thread and image decoder thread) in response to user actions.
        """
        super().__init__(parent)

        self.image_queue = image_queue

        # Make space for image display
        self.image_display = QtWidgets.QLabel(self)
        self.setCentralWidget(self.image_display)

        # Trigger an update image whenever the 'new_image_received' signal is fired.
        self.new_image_received.connect(self.update_image)

        # Add menus for image capture
        self._add_menu()

        # Add a status bar for showing frame rate and image stats
        self.status = QtWidgets.QStatusBar()
        monospace_font = QtGui.QFontDatabase.systemFont(QtGui.QFontDatabase.FixedFont)
        self.status.setFont(monospace_font)
        self.setStatusBar(self.status)

    def update_image(self):
        while True:
            try:
                image = self.image_queue.get_nowait()
            except queue.Empty:
                return
            height, width = image.shape
            qimg = QtGui.QImage(image.data, width, height, width, QtGui.QImage.Format_Grayscale8)
            scaled_pixmap = QtGui.QPixmap.fromImage(qimg).scaled(
                int(width * self.image_scale),
                int(height * self.image_scale),
                QtCore.Qt.KeepAspectRatio)
            self.image_display.setPixmap(scaled_pixmap)
            self.adjustSize()

    def _add_menu(self):
        # File menu
        menubar = self.menuBar()
        file_menu = menubar.addMenu("File")
        capture_action = QtWidgets.QAction("Capture", self)
        capture_action.triggered.connect(self.open_capture_dialog)
        file_menu.addAction(capture_action)

        # View menu
        view_menu = menubar.addMenu("View")
        view_options_action = QtWidgets.QAction("View Options", self)
        view_options_action.triggered.connect(self.open_view_options_dialog)
        view_menu.addAction(view_options_action)

    def open_capture_dialog(self):
        dialog = CaptureDialog(self)
        if dialog.exec_() == QtWidgets.QDialog.Accepted:
            values = dialog.get_values()
            print("\nCapture request:", values)
            command_queue.put(values)

    def open_view_options_dialog(self):
        dialog = ViewOptionsDialog(current_scale=self.image_scale, parent=self)
        if dialog.exec_() == QtWidgets.QDialog.Accepted:
            values = dialog.get_values()
            if (values["scale"] is not None):
                self.image_scale = values["scale"]

    def open_command_dialog(self):
        dialog = CommandWriteDialog()
        if dialog.exec_() == QtWidgets.QDialog.Accepted:
            values = dialog.get_values()
            if (values is not None):
                txbytes = values["address_bytes"] + values["data_bytes"]
                write_command_queue.put(txbytes)


    def update_status(self, text):
        self.status.showMessage(text)


if __name__ == '__main__':
    descstr = "Capture and stream video coming from our FPGA dev board over the high-speed FT232H connection."
    parser = argparse.ArgumentParser(description=descstr)
    parser.add_argument("--width", type=int, default=640)
    parser.add_argument("--height", type=int, default=480)
    parser.add_argument("--scale", type=int, default=2)
    parser.add_argument("--ftdi_sn_prefix", type=str, default="fsplit")
    args = parser.parse_args()

    # Initialize objects shared between threads
    raw_binary_queue = queue.Queue()
    image_queue = queue.Queue()
    command_queue = queue.Queue()
    write_command_queue = queue.Queue()
    app = QtWidgets.QApplication([])
    app.setQuitOnLastWindowClosed(True)
    window = ImageDisplayWindow(image_queue, command_queue, write_command_queue)

    ft232h_reader_thread = threading.Thread(target=ft232h_read_thread,
                                            args=(raw_binary_queue,),
                                            kwargs={"write_command_queue": write_command_queue,
                                                    "sn_prefix": args.ftdi_sn_prefix.encode('utf-8')},
                                            daemon=True)
    image_decoder_thread = threading.Thread(target=image_decoder_thread_func,
                                            args=(raw_binary_queue, image_queue, command_queue, window),
                                            kwargs={"width": args.width, "height": args.height},
                                            daemon=True)

    # Start both threads
    ft232h_reader_thread.start()
    image_decoder_thread.start()

    # Run the Qt display in the main thread.
    window.show()
    app.exec_()
