import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

RadioButton {
    id: control
    property color color: "#3255FF"
    indicator: Rectangle {
        width: 25
        height: 25
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        color: "transparent"
        border.color: control.color
        border.width: 3
        radius: width / 2

        Rectangle {
            id: selectIndicator
            anchors.fill: parent
            anchors.margins: 6
            visible: control.checked
            color: control.color
            radius: width / 2
        }
    }

    contentItem: Text {
        verticalAlignment: Text.AlignVCenter
        color: "#FAFAFA"
        font.family: "Roboto"
        font.pixelSize: 30
        leftPadding: control.indicator.width + 20
        text: control.text
    }
}
