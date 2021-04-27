import QtQuick 2.0

Item {
    id:root
    property color indicatorColor: "red"
    property color indicatorClickedColor: "green"
    property color textColor: "black"
    property string buttonName: "New Button"
    property int normalIndicatorW: 10
    property int hoveredIndicatorW: 25
    property int clickedIndicatorW: 30
    property int fontSize: 16
    property int offset: 10

    height: btnName.height + root.offset
    width: parent.width

    Rectangle{
        id: indicator
        color: "red"
        height: parent.height
        width: root.normalIndicatorW
    }

    Text{
        id: btnName
        text: root.buttonName
        font.pixelSize: root.fontSize
        font.family: "Tahoma"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: indicator.right
        anchors.leftMargin: 4
    }

    MouseArea{
        id: mousearea
        anchors.fill: parent
        hoverEnabled: true

        onEntered: indicator.width = root.hoveredIndicatorW
        onExited: indicator.width = root.normalIndicatorW

        onPressed: {
            indicator.width = root.clickedIndicatorW
            indicator.color = root.indicatorClickedColor
        }
        onReleased: {
            indicator.width = root.hoveredIndicatorW
            indicator.color = root.indicatorColor
        }
    }
}
