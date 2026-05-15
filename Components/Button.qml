import QtQuick 2.0
import "."

Item {
    property string text: "Button"
    property var textColor: Theme.white
    property var color: Theme.primaryColor
    property int radius : 6

    id: component
    implicitWidth: text.implicitWidth + 20
    implicitHeight: text.implicitHeight + 20

    Rectangle {
        radius: parent.radius
        anchors.fill: parent
        color: {
            if (mouseArea.pressed) {
                return Theme.mainColor(parent.color)
            }

            if (mouseArea.containsMouse) {
                return Theme.contrastColor(parent.color)
            }
            return Theme.mainColor(parent.color)
        }
    }

    Text {
        id: text
        anchors.centerIn: parent
        text: parent.text
        color: Theme.mainColor(parent.textColor)
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
    }
}
