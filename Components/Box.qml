import QtQuick 2.0
import "."

Item {
    property var color: Theme.basicColor

    Rectangle {
        anchors.fill: parent
        color: {
            return Theme.mode === Theme.Mode.Dark ? Theme.darkColor(parent.color) : Theme.lightColor(parent.color)
        }
    }
}
