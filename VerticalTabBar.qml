import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

TabBar {
    id: control
    height: parent.height
    width: 100

    contentItem: ListView {
        id: view
        model: control.contentModel
        currentIndex: control.currentIndex
        spacing: 5
        orientation: ListView.Vertical
    }
    background: Rectangle {
        color: "#1d1d1d"
    }
}
