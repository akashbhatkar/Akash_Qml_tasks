import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
//    property var middle: value
    MyButton{
        id: button1
        x: 50
        y:100
        color: "red"
        colorClicked: "green"
        title: "Button 1"

    }
    MyButton
    {
        id: button2
        x:250
        y:100
        color: "yellow"
        colorClicked: "green"
        title: "Button 2"
    }
    MyButton{
        x:450
        y:100
        color:"blue"
        colorClicked: "green"
        title: "Button 3"

    }
    MyButton
    {
        x:50
        y:250
        height: 40
        width: 500
        color: "lightblue"
        colorClicked: "green"
        title: "Long button"
    }


}
