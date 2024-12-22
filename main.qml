import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    color: "#121212"
    title: qsTr("Hello World")
    visibility: "Maximized"
    id: window


    Rectangle {
        id: sideContainer
        width: tabBar.width
        height: window.height
        VerticalTabBar {
            id: tabBar
            anchors.left: parent.left
            anchors.top: parent.top

            VerticatTabButton {
                text: "Mono"
                width: parent.width
                onClicked: {
                    modesView.replace(monoMode)
                }
                icon.width: 50
                icon.height: 50
                icon.color: "red"
                icon.source: "qrc:/icons/icons/color.png"
            }
            VerticatTabButton {
                text: "Rainbow"
                width: parent.width
                onClicked: {
                    modesView.replace(rainbowMode)
                }
                icon.width: 50
                icon.height: 50
                icon.color: "red"
                icon.source: "qrc:/icons/icons/rainbow.png"
            }
            VerticatTabButton {
                text: "Noise"
                width: parent.width
                onClicked: {
                    modesView.replace(noiseMode)
                }
                icon.width: 50
                icon.height: 50
                icon.color: "red"
                icon.source: "qrc:/icons/icons/noise.png"
            }
            VerticatTabButton {
                text: "Lamp"
                width: parent.width
                onClicked: {
                    modesView.replace(lampMode)
                }
                icon.width: 50
                icon.height: 50
                icon.color: "red"
                icon.source: "qrc:/icons/icons/lamp.png"
            }
        }
        RoundButton {
            id: powerButton
            width: 50
            height: 50
            checkable: true
            anchors.bottom: sideContainer.bottom
            anchors.horizontalCenter: sideContainer.horizontalCenter
            anchors.margins: sideContainer.width / 2 - width / 2
            icon.source: "qrc:/icons/icons/turnOn.png"
            background: Rectangle {
                color: powerButton.checked? "#3255ff" : "#343435"
                radius: powerButton.width / 2

                Behavior on color {
                    ColorAnimation {
                        duration: 200
                        easing.type: Easing.OutCubic
                    }
                }

            }
        }
    }

    StackView {
        id: modesView
        anchors.left: sideContainer.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        initialItem: monoMode
        clip: true

        replaceEnter: Transition {
                  PropertyAnimation{
                      property: "opacity"
                      from: 0
                      to: 1
                      duration: 200
                  }
              }
        replaceExit: Transition {
            PropertyAnimation{
            property: "opacity"
            from: 1
            to: 0
            duration: 200
            }
        }
    }

    MonoMode {
    id: monoMode
    visible: true
    }
    RainbowMode {
    id: rainbowMode
    visible: false
    }
    NoiseMode {
    id: noiseMode
    visible: false
    }
    LampMode {
    id: lampMode
    visible: false
    }
}
