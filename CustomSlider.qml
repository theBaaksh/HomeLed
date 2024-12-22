import QtQuick
import QtQuick.Controls.Basic
import Qt5Compat.GraphicalEffects


Slider {
    id: root
    antialiasing: true
    property color bodyColor: "#1D1D1D"
    property color borderColor: "#707070"

    height: 420
    width: 140
    from: 0
    to: 100
    stepSize: 1
    value: 20
    orientation: Qt.Vertical

    background: Rectangle {
        id: background
        color: bodyColor
        radius: 40
    }

    Item {
        anchors.fill: background
        anchors.margins: 1
        layer.enabled: true
        layer.effect: OpacityMask {
        maskSource: background
        }
        Rectangle {
            id: abs
            width: parent.width
            height: (1 - root.visualPosition) * root.height
            y: root.height - height
            color: "#343435"
        }
    }

    handle: Image {
        source: "qrc:/icons/icons/handle.png"
        width: 50
        height: 50
        x: root.width / 2 - width / 2
        y: abs.y - height / 2
    }

    Image {
        id: handleLabel
        source: "qrc:/icons/icons/handleLabel.png"
        width: 95
        height: 55
        x: handle.x + handle.width / 2 - width / 2
        y: handle.y - 50

        Text {
            anchors.centerIn: parent
            id: sliderValueLabel
            color: "#FAFAFA"
            font.family: "Roboto"
            font.pixelSize: 20
            text: root.value
        }
    }
}
