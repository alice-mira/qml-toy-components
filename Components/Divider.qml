import QtQuick 2.0
import "."

Item {
    enum Orientation {
        Horizontal,
        Vertical
    }

    property var orientation: Divider.Orientation.Horizontal
    property int thickness: 1
    property var color: Theme.basicColor

    id: component
    implicitWidth: orientation === Divider.Orientation.Vertical ? thickness : parent.width
    implicitHeight: orientation === Divider.Orientation.Vertical ? parent.height : thickness

    Rectangle {
        anchors.centerIn: parent
        width: parent.orientation === Divider.Orientation.Vertical ? parent.thickness : parent.width
        height: parent.orientation === Divider.Orientation.Vertical ? parent.height : parent.thickness
        color: Theme.mainColor(parent.color)
    }
}
