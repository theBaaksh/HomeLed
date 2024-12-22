import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    property int currentindex: 0
    property int borderRadius: 10
    property int tabSpacing: 5
    property color bodyColor: "#101319"
    property color tabColor: "transparent"
    property color tabTextColor: "#D0D1D3"
    property color tabSelectionColor: "#171a23"

    id: root

    color: bodyColor
    radius: borderRadius
    height: 40
    width: tabBarLayout.width

    SelectionPointer {
        id: selectionPointer
        visible: false
    }

    RowLayout {
        id: tabBarLayout
        spacing: -tabSpacing // отступ есть слева и справа -> получается два, а нужен один.
        anchors.centerIn: parent
        Repeater {
            id: repeater
            model: tabBarModel
            delegate: RoundTab {
                Layout.leftMargin: tabSpacing
                Layout.rightMargin: tabSpacing
                Layout.preferredHeight: root.height - 2 * tabSpacing
                onTabClicked: {
                    console.log(model.tabName)
                    root.currentindex = index
                    selectionPointer.x = repeater.itemAt(index).x
                }
            }
            onItemAdded: {
                selectionPointer.width = item.width
                selectionPointer.height = root.height - 2 * tabSpacing
                selectionPointer.x = item.x + tabSpacing
                selectionPointer.y = root.height / 2 - selectionPointer.height / 2
                selectionPointer.color = tabSelectionColor
                selectionPointer.radius = borderRadius / 2
                selectionPointer.visible = true
                selectionPointer.init = true
            }
        }
    }

    ListModel {
        id: tabBarModel

        Component.onCompleted: {
            append({tabName: "Реконструкция",
                    tabID: "ft",
                    tabRadius: borderRadius / 2,
                    tabColor: String(tabColor),
                    tabTextColor: String(tabTextColor)})
            append({tabName: "Визуализация",
                    tabID: "st",
                    tabRadius: borderRadius / 2,
                    tabColor: String(tabColor),
                    tabTextColor: String(tabTextColor)})
        }
    }
}
