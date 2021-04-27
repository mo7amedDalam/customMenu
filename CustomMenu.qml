import QtQuick 2.0

Column {
    id: menu
    width: 100
    spacing: 0

    CustomButton{
        buttonName: "Play"
    }
    CustomButton{
        buttonName: "Settings"
    }
    CustomButton{
        buttonName: "Quit"
    }
}
