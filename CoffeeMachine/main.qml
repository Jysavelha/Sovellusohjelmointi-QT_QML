import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    property color background: "grey"
    width: 500
    height: 500
    visible: true
    title: qsTr("Coffee Machine")
    Rectangle{
        id: coffeeMachineBackground
        anchors.fill: parent
        color: background

        Text {
            id: coffeeText
            color: "floralwhite"
            text: "Choose your drink!"
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Item {
            Timer {
                    interval: 500
                    running: true
                    repeat: true
                    onTriggered: time.text = Date().toString()
                }
            Text {
                id: time
                font.pointSize: 10
                anchors.horizontalCenter: Window.horizontalCenter
                y:480
            }
        }


        CafeLatte{
            id: cafeLatte
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();

            }

        }

        CafeMocha{
            id: cafeMocha
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();
            }
        }

        Cappuchino{
            id: cappuchino
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();

            }
        }

        ColdWater{
            id: coldWater
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();
            }
        }

        Espresso{
            id: espresso
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();
            }
        }

        HotChocolate{
            id: hotChocolate
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();
            }
        }

        HotWater{
            id: hotWater
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();
            }
        }

        LatteMacchiato{
            id: latteMacchiato
            backgroundColor: "#271300"
            opacity: 1
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                startEngine();
            }
        }
        Item {
            Timer {
                    id: timer
                    interval: 10000
                    running: false
                    repeat: false
                    onTriggered: {
                        cafeLatteText.text = "         Your drink is ready!"+"\nPress BACK to get another one!"
                        cafeLatteText.opacity = 1
                        back.opacity = 1
                    }
                }
            Text {
                id: cafeLatteText
                color: "floralwhite"
                font.pointSize: 16
                x: 110
                y: 230
            }
        }


        BackButton{
            id: back
            backgroundColor: "black"
            opacity: 0
            Behavior on opacity{
                PropertyAnimation {
                    easing.type: Easing.Linear
                    duration: 500
                }
            }
            onButtonClicked: {
                restart();
            }
        }

}
    function startEngine(){

        coffeeText.text = "Wait..."
        coffeeText.y = 200
        background = "#271300"
        cafeLatte.opacity = 0
        cafeMocha.opacity = 0
        cappuchino.opacity = 0
        coldWater.opacity = 0
        espresso.opacity = 0
        hotChocolate.opacity = 0
        hotWater.opacity = 0
        latteMacchiato.opacity = 0
        timer.running = "true"

    }

    function restart(){
        coffeeText.text = "Choose your drink!"
        coffeeText.y = 10
        background = "grey"
        cafeLatte.opacity = 1
        cafeMocha.opacity = 1
        cappuchino.opacity = 1
        coldWater.opacity = 1
        espresso.opacity = 1
        hotChocolate.opacity = 1
        hotWater.opacity = 1
        latteMacchiato.opacity = 1
        back.opacity = 0
        timer.running = "false"
        cafeLatteText.opacity = 0


    }
}



