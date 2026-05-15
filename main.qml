import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import Components 1.0

Window {
    visible: true
    width: 400
    height: 300
    title: "Toy QML Components 演示"

    Component.onCompleted: {
//        Theme.mode = Theme.Mode.Dark
    }

    Box {
        anchors.fill: parent
        color: Theme.green
    }

    RowLayout {
        anchors.fill: parent

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ColumnLayout {
                anchors.centerIn: parent

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    text: "Primary Color"
                    Badge {
                        color: Theme.orange
                    }
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    text: "Secondary Color"
                    color: Theme.secondaryColor
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    text: "Basic Color"
                    color: Theme.basicColor
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    text: "Red"
                    color: Theme.red
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    text: "Orange"
                    color: Theme.orange
                }

                Button {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    text: "Green"
                    color: Theme.green
                }
            }
        }

        Divider {
            orientation: Divider.Orientation.Vertical
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ColumnLayout {
                anchors.centerIn: parent

                Switch {
                    open: true
                    Badge {}
                }

                Switch {
                    color: Theme.secondaryColor
                    open: true
                }

                Switch {
                    color: Theme.basicColor
                    open: true
                }

                Switch {
                    color: Theme.red
                    open: true
                }

                Switch {
                    color: Theme.orange
                    open: true
                }

                Switch {
                    color: Theme.green
                    open: true
                }
            }
        }
    }
}
