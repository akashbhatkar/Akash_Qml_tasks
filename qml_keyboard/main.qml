import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id:background
        color: "black"
        anchors.fill: parent
        focus: true

        Rectangle{
            id:innerrectangle
            color: "red"
            anchors.centerIn: parent
            width: 100
            height: 100
        }
         Rectangle{
             color: "transparent"
             anchors.centerIn: parent
             width: 100
             height: 100
             border.color: "yellow"
             border.width: 5
         }
         Keys.onUpPressed: innerrectangle.height +=10
         Keys.onDownPressed: innerrectangle.height -=10
         Keys.onRightPressed: innerrectangle.width +=10
         Keys.onLeftPressed: innerrectangle.width -=10

        }


}
