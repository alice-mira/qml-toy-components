import QtQuick 2.0

Item {
    property var color: Theme.red
    property int size: 12

    id: component
    implicitWidth: size
    implicitHeight: size
    anchors.top: parent.top
    anchors.right: parent.right

    Rectangle {
        anchors.fill: parent
        color: Theme.mainColor(parent.color)
        radius: size / 2
    }
}
