import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import MonoModeController 1.0

import "./TabBar"

Page {
    id: root
    background: Rectangle {
        color: "#121212"
    }
    MonoModeController {
        id: controller
    }

    RowLayout {
        anchors.centerIn: parent
        spacing: 100
        Column {
            spacing: 40
            CustomSlider {
                id: rSlider
                Layout.preferredWidth: 140
                Layout.preferredHeight: 420
                onValueChanged: {
                    controller.setR(value)
                }
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 30
                text: "R"
            }
        }
        Column {
            spacing: 40
            CustomSlider {
                id: gSlider
                Layout.preferredWidth: 140
                Layout.preferredHeight: 420
                onValueChanged: {
                    controller.setG(value)
                }
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 30
                text: "G"
            }
        }

        Column {
            spacing: 40
            CustomSlider {
                id: bSlider
                Layout.preferredWidth: 140
                Layout.preferredHeight: 420
                onValueChanged: {
                    controller.setB(value)
                }
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 30
                text: "B"
            }
        }
        Column {
            spacing: 40
            CustomSlider {
                id: brSlider
                Layout.preferredWidth: 140
                Layout.preferredHeight: 420
                onValueChanged: {
                    controller.setBrightness(value)
                }
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 30
                text: "Brightness"
            }
        }

        Image {
            Layout.alignment: Qt.AlignVCenter
            source: "qrc:/icons/icons/ColorWheel.png"
            width: 100
            height: 100
        }
    }
}

