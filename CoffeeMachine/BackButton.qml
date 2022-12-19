import QtQuick 2.2

Rectangle {
    property color backgroundColor: "black"
    //Määritellään buttonin lähettämät tapahtumat (signaalit)
    signal buttonClicked

    height: 30
    width: 60
    anchors.horizontalCenter: parent.horizontalCenter
    y:300
    radius: 10
    color:backgroundColor
    Text {
        text:"BACK"
        color:"floralwhite"
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onPressed:  {
            parent.width = 55
            parent.height = 25
        }
        onReleased: {
            parent.width = 60
            parent.height = 30
            //lähetetään (emittoidaan) signaali (signaali on javascript -funktio)
            parent.buttonClicked()
        }
    }
}


