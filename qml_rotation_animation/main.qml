import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rotation box animation app")

    Rectangle{
        id:rectangle
        height: 200
        width: 200
        color: "orange"
        anchors.centerIn: parent

    Text {
        id: mytext
        text: Math.round(parent.rotation)
        anchors.centerIn: parent
        font.pointSize: 50
        font.bold: true
        color: "black"
    }
    RotationAnimation{
        id: animation
        target: rectangle
        loops: Animation.Infinite
        from: rectangle.rotation
        to: 360// -360 to reduce
        direction: RotationAnimation.Clockwise
        duration: 3000
        running: true
    }
    MouseArea{
        id: mymousearea
        anchors.fill: parent
        onClicked: {
            if(animation.paused)
                animation.resume()
            else
                animation.pause()
        }
    }
   }
}
