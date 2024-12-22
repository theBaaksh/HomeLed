import QtQuick 2.15

Rectangle {
    property bool init: false

    Behavior on x {
        enabled: init
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuart
        }
    }
}
