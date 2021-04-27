import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 800
    height: 600
    visible: true
    title: "Custom Menu"

    CustomMenu{
        anchors.centerIn: parent
    }

    Text {
        id: auther
        text: "By: Mohamed Mostafa"
        anchors.top: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: -50
    }
}
