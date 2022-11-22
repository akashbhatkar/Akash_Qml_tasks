import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


   Rectangle
   {
       color: "orange"
       width:250
       height: 30
      anchors.centerIn: parent
      opacity: 0.5

   }
}
