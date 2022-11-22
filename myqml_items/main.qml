import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    Item {
//        id: myitem
//        width: 200
//        height: 200

        Rectangle
        {
            color: "red"
            height: parent.height
            width: parent.width


        }
    }
//}
