import QtQuick 2.0
import "."

Item {
    property string text: "Text"
    property var color: Theme.basicColor

    implicitWidth: textItem.implicitWidth
    implicitHeight: textItem.implicitHeight

    Text {
        id: textItem
        anchors.centerIn: parent
        text: parent.text
        color: Theme.fgColor(parent.color)
    }
}
