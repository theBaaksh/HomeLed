import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: "#1D1D1D"
    radius: 10

    property color normalColor: "#1D1D1D"
    property color hoverColor: "#343435"
    signal indexChanged(string index)

    ColumnLayout {
        id: container
        spacing: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 10

        Button {
            id: monoModeButton
            hoverEnabled: true
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            Text {
                anchors.fill: parent
                anchors.margins: 10
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 20
                text: "Mono"
            }
            background: Rectangle {
                color: monoModeButton.hovered? hoverColor : normalColor
                radius: 5
                Behavior on color {
                    ColorAnimation {
                        easing.type: Easing.OutQuart
                        duration: 300
                    }
                }
            }
            onClicked: {
                indexChanged("monoMode")
            }
        }

        Button {
            id: rainbowModeButton
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            Text {
                anchors.fill: parent
                anchors.margins: 10
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 20
                text: "Reinbow"
            }
            background: Rectangle {
                color: rainbowModeButton.hovered? hoverColor : normalColor
                radius: 5
                Behavior on color {
                    ColorAnimation {
                        easing.type: Easing.OutQuart
                        duration: 300
                    }
                }
            }
            onClicked: {
                indexChanged("rainbowMode")
            }
        }

        Button {
            id: noiseModeButton
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            Text {
                anchors.fill: parent
                anchors.margins: 10
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 20
                text: "Noise"
            }
            background: Rectangle {
                color: noiseModeButton.hovered? hoverColor : normalColor
                radius: 5
                Behavior on color {
                    ColorAnimation {
                        easing.type: Easing.OutQuart
                        duration: 300
                    }
                }
            }
            onClicked: {
                indexChanged("noiseMode")
            }
        }

        Button {
            id: lampModeButton
            Layout.preferredHeight: 50
            Layout.fillWidth: true
            Text {
                anchors.fill: parent
                anchors.margins: 10
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                color: "#FAFAFA"
                font.family: "Roboto"
                font.pixelSize: 20
                text: "Lamp"
            }
            background: Rectangle {
                color: lampModeButton.hovered? hoverColor : normalColor
                radius: 5
                Behavior on color {
                    ColorAnimation {
                        easing.type: Easing.OutQuart
                        duration: 300
                    }
                }
            }
            onClicked: {
                indexChanged("lampMode")
            }
        }
    }

    Button {
        id: powerButton
        anchors.bottom: root.bottom
        checkable: true
        x: root.width / 2 - width / 2
        anchors.margins: 40
        width: 120
        height: 120
        icon.source : "qrc:/icons/icons/powerIcon.svg"
        icon.color: "transparent"
        icon.width: width / 2
        icon.height: height / 2
        background: Rectangle {
            anchors.fill: parent
            color: powerButton.checked? "#3255FF" : "#343435"
            radius: width / 2
            Behavior on color {
                ColorAnimation {
                    easing.type: Easing.OutQuart
                    duration: 300
                }
            }
        }
    }
}
