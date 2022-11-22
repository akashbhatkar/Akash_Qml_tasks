import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("My Window")


   Rectangle
   {

       color: "red"
       width:250
       height: 30
      opacity: 1
      x:150
      y:120
      z: 1250

   }
   Rectangle
   {
       color: "green"
      width: 250
      height: 30
      x: 150
      y: 200

   }
}
