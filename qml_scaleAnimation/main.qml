import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id: rectangle
        width: 200
        height: 200
        anchors.centerIn: parent
        color: "skyblue"
        clip: true


        Text {
            id: mytext
            text: qsTr("SCALE")
            anchors.centerIn: parent
            font.bold: true
            font.pointSize: 60
            rotation: -45
            color: "red"

        }
         SequentialAnimation{
             id: animation
             running: true
             loops: Animation.Infinite


             ScaleAnimator{

                 id: shrink
                 target: rectangle
                 from: 1
                 to: 0.5
                 duration: 2000
                 running: true
             }
             ScaleAnimator{
                 id:grow
                 target: rectangle
                 from: 0.5
                 to: 1
                 duration: 2000
                 running: true

         }
        }


//    MouseArea{
//        id: mousearea
//        anchors.fill: parent
//        onPressAndHold: {
//            shrink.start()
//        }
//        onReleased: grow.start()

    }
}
