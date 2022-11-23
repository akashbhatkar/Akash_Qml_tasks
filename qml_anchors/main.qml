import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "black"

    MyShape{
        id: shapecenter
        color: "white"
        text: "centre"
        anchors.centerIn: parent
    }

    MyShape{
        color: "blue"
        text: "Top"
        anchors.bottom: shapecenter.top
        anchors.left: shapecenter.left
    }

    MyShape{
        color:"green"
        text: "Bottom"
        anchors.top: shapecenter.bottom
        anchors.left: shapecenter.left
    }
    MyShape{
        color: "orange"
        text: "left"
        anchors.right: shapecenter.left
        anchors.top: shapecenter.top
    }
    MyShape{
        color: "skyblue"
        text: "Right"
        anchors.left: shapecenter.right
        anchors.bottom: shapecenter.bottom
    }
}
