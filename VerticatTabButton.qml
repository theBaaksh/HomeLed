import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import Qt5Compat.GraphicalEffects
import QtQuick.Controls 2.15

TabButton {
    id: root
    implicitHeight: 70
    font.family: "Roboto"
    font.pixelSize: 14

    contentItem: ColumnLayout {
        id: layout
        Image {
            id: icon
            Layout.alignment: Qt.AlignHCenter
            source: root.icon.source

            ColorOverlay {
                anchors.fill: icon
                source: icon
                color: root.checked? "#36f" : "#5D5F65"
            }
        }
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: root.text
            font: root.font
            color: "#D0D1D3"
        }
    }

    background: Rectangle {
        color: root.checked? "#343435" : "#1d1d1d"

        Behavior on color {
            ColorAnimation {
                duration: 200
                easing.type: Easing.OutCubic
            }
        }
    }
}
