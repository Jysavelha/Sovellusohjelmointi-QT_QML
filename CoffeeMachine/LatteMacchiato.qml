import QtQuick 2.15

Rectangle {
    property color backgroundColor: "grey"
    //Määritellään buttonin lähettämät tapahtumat (signaalit)
    signal buttonClicked

    height: 50
    width: 100
    x: 300
    y:200
    radius: 10
    color:backgroundColor
    Text {
        text:"Latte Macchiato"
        color:"floralwhite"
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onPressed:  {
            parent.width = 95
            parent.height = 45
        }
        onReleased: {
            parent.width = 100
            parent.height = 50
            //lähetetään (emittoidaan) signaali (signaali on javascript -funktio)
            parent.buttonClicked()
        }
    }
}
