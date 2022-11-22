import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Universal 2.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    Text {
//        id: elememets
//        text: qsTr("hiiiiii")
//        anchors.fill:  parent
//        font.pixelSize: 25
////        font:
            ColorAnimation {
            from: "white"
            to: "black"
            duration: 200
        }
    }
//    Image {
//        id: myimage
//        source: "https://upload.wikimedia.org/wikipedia/commons/d/df/Full_moon_partially_obscured_by_atmosphere.jpg"
//        anchors.fill:  parent

//    }
//}

