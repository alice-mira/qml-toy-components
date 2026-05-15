import QtQuick 2.0

Item {
    property string text: "chip"
    property var color: Theme.primaryColor
    property var textColor: color
    property int radius: Math.min(width, height) / 2

    id: component
    implicitWidth: text.implicitWidth + 20
    implicitHeight: text.implicitHeight + 10

    Rectangle {
        id: background
        radius: parent.radius
        anchors.fill: parent
        color: Theme.bgColor(parent.color)
        border.color: Theme.mainColor(parent.color)
    }

    Text {
        id: text
        anchors.centerIn: parent
        text: parent.text
        color: Theme.mainColor(parent.textColor)
    }
}
