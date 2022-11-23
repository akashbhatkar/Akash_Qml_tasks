import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        color: "pink"
        width: 300
        height: 500
        clip: true
        anchors.centerIn: parent

        Flow{
            anchors.centerIn: parent
            flow: Flow.LeftToRight
            MyShape{color: "blue"}
            MyShape{color: "skyblue"}
            MyShape{color: "black"}
            MyShape{color: " white"}
            MyShape{color: "grey"}
            MyShape{color: "red"}
            MyShape{color: "yellow"}

        }

    }
}
