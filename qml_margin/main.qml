import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id: upper
        color: "orange"
        width: 400
        height: 500
        anchors.centerIn: parent

        Rectangle{
            color: "blue"
            width: 100
            height: 100
            anchors.margins: 50
            anchors.left: upper.left
            anchors.top: upper.top

        }
        Rectangle{
            color: "green"
            width: 100
            height: 100
            anchors.margins: 50
            anchors.left: upper.left
            anchors.bottom: upper.bottom
        }
        Rectangle{
            color: "green"
            width: 100
            height: 100
            anchors.margins: 50
            anchors.right: upper.right
            anchors.top: upper.top
        }
        Rectangle{
            color: "blue"
            width: 100
            height: 100
            anchors.margins: 50
            anchors.right: upper.right
            anchors.bottom: upper.bottom

        }

    }
}
