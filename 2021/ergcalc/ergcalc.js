var fieldCount = 0;

/**
 * Takes a string in the form "m:ss.s" and returns the number of seconds as a float.
 * If there's an error in the formatting, it returns NaN.
 */
function SplitToSeconds(split) {
    if (typeof split === "string") {
        // basic, very rigid string checking using regexp
        if (split.search(/^\d:\d\d.\d$/i) == 0) {
            var min = parseInt(split.substring(0, 1));
            var sec = parseInt(split.substring(2, 4));
            var tenths = parseInt(split.substring(5, 6));
            return ((min * 60) + sec + (tenths / 10));
        } else {
            return NaN;
        }
    } else {
        return NaN;
    }
}

function SecondsToSplit(splitsecs) {
    var min = Math.floor(splitsecs / 60).toString();
    var sec = (splitsecs % 60).toFixed(1);
    return min + ":" + sec;
}


/**
 * Goes through all of the input text fields, parses the values there, and fills the result text
 * fields.
 */
function UpdateResults() {
    //for
}

function AddSegment() {
    var container = document.getElementById("segments");

    var meters = document.createElement("INPUT");
    meters.setAttribute("type", "text");
    meters.setAttribute("id", "segment" + fieldCount.toString() + "meters");

    var split = document.createElement("INPUT");
    split.setAttribute("type", "text");
    split.setAttribute("id", "segment" + fieldCount.toString() + "split");

    var strokerate = document.createElement("INPUT");
    strokerate.setAttribute("type", "text");
    strokerate.setAttribute("id", "segment" + fieldCount.toString() + "strokerate");

    container.appendChild(meters);
    container.appendChild(split);
    container.appendChild(strokerate);
    fieldCount += 1;
}

function RemoveSegment() {
    if (fieldCount > 0) {
        fieldCount -= 1;
        var container = document.getElementById("segments");
        document.getElementById("segment" + fieldCount.toString() + "meters").setAttribute("value", "dead");
        container.removeChild(document.getElementById("segment" + fieldCount.toString() + "meters"));
        container.removeChild(document.getElementById("segment" + fieldCount.toString() + "split"));
        container.removeChild(document.getElementById("segment" + fieldCount.toString() + "strokerate"));
    }
    UpdateResults();
}

function init() {
    fieldCount = 0;
}
