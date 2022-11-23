import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color:"black"
    Column{
        anchors.centerIn: parent

    MyShape
    { color: "red"
    opacity: 0.7}

    MyShape{color: "white"}
    MyShape{color: "green"}
    }
}
