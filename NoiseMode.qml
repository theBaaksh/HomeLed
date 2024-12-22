import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import NoiseModeController 1.0

Page {
    id: root
    background: Rectangle {
        color: "#121212"
    }

    NoiseModeController {
        id: controller
    }

    RowLayout {
        anchors.centerIn: parent
        spacing: 100
        Column {
            spacing: 10
            CustomSlider {
                id: speedSlider
                Layout.preferredWidth: 140
                Layout.preferredHeight: 420
                onValueChanged: {
                    controller.setSpeed(value)
                }
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 30
                text: "Speed"
            }
        }

        Column {
            spacing: 10
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
    }
}
