import QtQuick 2.0
import "."

Item {
    property bool open: false
    property var color: Theme.primaryColor
    property int gap: 2
    property int duration: 100

    id: component
    implicitWidth: 60
    implicitHeight: 30

    Rectangle {
        id: background
        radius: Math.min(parent.width, parent.height) / 2
        anchors.fill: parent
        color: {
            if (open) {
                return Theme.mainColor(parent.color)
            }

            return Theme.mainColor(Theme.basicColor)
        }

        Behavior on color {
            PropertyAnimation {
                duration: component.duration
                easing.type: Easing.InOutQuad
            }
        }
    }

    Rectangle {
        id: indicator
        width: Math.min(parent.width, parent.height) - parent.gap * 2
        height: Math.min(parent.width, parent.height) - parent.gap * 2
        radius: Math.min(parent.width, parent.height) / 2
        color: Theme.mode === Theme.Mode.Dark ? Theme.darkColor(Theme.basicColor) : Theme.lightColor(Theme.basicColor)
        x: parent.open ? parent.width - Math.min(parent.width, parent.height) + parent.gap : parent.gap
        y: parent.gap

        Behavior on x {
            NumberAnimation {
                duration: component.duration
                easing.type: Easing.InOutQuad
            }
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            parent.open = !parent.open
        }
    }
}
