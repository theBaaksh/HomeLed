import QtQuick 2.15

Rectangle {
    id: root
    signal tabClicked()

   // width: text.paintedWidth + 10
    width: 150
    height: text.paintedHeight + 10
    color:  model.tabColor
    radius: model.tabRadius

    Text {
        id: text
        anchors.centerIn: parent
        font.family: "Roboto"
        font.pointSize: 12
        color: model.tabTextColor
        text: model.tabName
        z: 1
    }

    MouseArea {
        anchors.fill: root
        onClicked: {
            root.tabClicked()
        }
        z: 1
    }
}
