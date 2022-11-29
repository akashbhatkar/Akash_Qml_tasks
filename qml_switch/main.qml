import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Image {
         id: img
        height: 200
        width: 200
        x:0
        y:0

        source: "qrc:/images/sad.jpg"
    }
    Column{
        anchors.centerIn: parent



        Switch{

            id:sw
            text: qsTr("sad")

              onToggled: {
            if(checked){
                text= "happy"
            img.source="qrc:/images/smiley.jpg"

            }
            else
                img.source="qrc:/images/sad.jpg"
        }

        }
    }
}
