import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row{
        width: 338
           anchors.centerIn: parent
           height: 254
           anchors.verticalCenterOffset: 59
           anchors.horizontalCenterOffset: 72

        spacing: 20

        DelayButton{
            id: dly
            delay: 2000
            onProgressChanged: {
                lbl.text=Math.round( progress*100)
            }

            text: qsTr("delete everything")

           onActivated:{

               rect.color="blue"
               lbl.text="Done"
               dly.text="Boom"

           }

        }
        Rectangle{
            id: rect
            height: 100
            width: 100
            color: "grey"

        }

        Label{
            anchors.right: parent
            id: lbl
            text: qsTr("text")
        }

    }
}
