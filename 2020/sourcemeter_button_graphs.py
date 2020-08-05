
data200mV = pandas.read_csv("~/projects/power_harvest_buttons/200mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data500mV = pandas.read_csv("~/projects/power_harvest_buttons/500mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data1000mV = pandas.read_csv("~/projects/power_harvest_buttons/1000mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data1500mV = pandas.read_csv("~/projects/power_harvest_buttons/1500mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data2000mV = pandas.read_csv("~/projects/power_harvest_buttons/2000mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data2500mV = pandas.read_csv("~/projects/power_harvest_buttons/2500mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data3000mV = pandas.read_csv("~/projects/power_harvest_buttons/3000mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)
data3500mV = pandas.read_csv("~/projects/power_harvest_buttons/3500mV.csv", usecols=[1]).to_numpy()[9:].reshape(9998).astype(np.float)


centers = [6616, 9503, 6091,  5049, 4736, 3286, 9317, 6276, 1725]


plt.plot(data100mV[centers[0]-30:centers[0]+30])
plt.plot(data200mV[centers[1]-30:centers[1]+30])
plt.plot(data500mV[centers[2]-30:centers[2]+30])
plt.plot(data1000mV[centers[3]-30:centers[3]+30])
plt.plot(data1500mV[centers[4]-30:centers[4]+30])
plt.plot(data2000mV[centers[5]-30:centers[5]+30])
plt.plot(data2500mV[centers[6]-30:centers[6]+30])
plt.plot(data3000mV[centers[7]-30:centers[7]+30])
plt.plot(data3500mV[centers[8]-30:centers[8]+30])

plt.legend(['100mV', '200mV', '500mV', '1000mV', '1500mV', '2000mV', '2500mV', '3000mV', '3500mV'], loc='lower right')
