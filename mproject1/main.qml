import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: wd
    width: 1280//640
    height: 720//480
    visible: true
    title: qsTr("Hello World")
  Row{
      id: bottomrow
      y: parent.height-100
      width: parent.width
      spacing: 70
   Rectangle
   {
       id:b1
       height:50
       width: 50
       color: "red"
       Text {
           anchors.centerIn:  parent
           id: recttext
           text: qsTr("Click")
           font.bold: true
           font.pointSize: 10
       }
       MouseArea{
           anchors.fill: parent
           onClicked: {
               middlerow.visible=true
             //  scroll.visible=true
               secondbottomrow.visible=true
               transrect.visible=true
               tumbler.visible=true

           }
       }
   }
   Rectangle
   {
       id:b2
       height:50
       width: 50
color: "red"
   }
   Rectangle
   {
       id:b3
       height:50
       width: 50
color: "red"
   }
   Rectangle
   {
       id:b4
       height:50
       width: 50
       color: "red"
   }
   Rectangle
   {
       id:b5
       height:50
       width: 50
color: "red"
   }
   Rectangle
   {
       id:b6
       height:50
       width: 50
color: "red"
   }
   Rectangle
   {
       id:b7
       height:50
       width: 50
color: "red"
   }
   Rectangle
   {
       id:b8
       height:50
       width: 50
       color: "red"
   }
   Rectangle
   {
       id:b9
       height:50
       width: 50
color: "red"
   }
   Rectangle
   {
       id:b10
       height:50
       width: 50
color: "red"
   }
  }
/**************************************************************************** SECONDWINDOW  *********************************************************************************************/

  Row{
      id: middlerow
      x: 480
      y: 564
      spacing: 70
      visible: false


      Rectangle
      {
          id:sb1
          height:50
          width: 50
   color: "lightgreen"

   Text {
       id: sb1text
       anchors.centerIn: parent

        text:{
            if(tumbler.currentIndex===0)
            tumbler.currentIndex+30
            else if(tumbler.currentIndex==1)
                tumbler.currentIndex+30
            else
                tumbler.currentIndex-2
        }


   }

      }
      Rectangle
      {
          id:sb2
          height:50
          width: 50
   color: "lightgreen"
   Text {
       id: sb2text
       anchors.centerIn: parent
       text:{
           if(tumbler.currentIndex===0)
           tumbler.currentIndex+31
           else if(tumbler.currentIndex==1)
               tumbler.currentIndex-1
           else
               tumbler.currentIndex-1
       }
   }
      }
      Rectangle
      {
          id:sb3
          height:50
          width: 50
   color: "lightgreen"

      Text {
          id: sb3text
          anchors.centerIn: parent
          text: tumbler.currentIndex
      }
      }
      Rectangle
      {
          id:sb4
          height:50
          width: 50
          color: "lightgreen"
          Text {
              id: sb4text
              anchors.centerIn: parent
              text: {
                  if(tumbler.currentIndex===31)
                  tumbler.currentIndex-31
                  else
                      tumbler.currentIndex+1
              }

          }
      }

  }
/********************************************************************************* FIRSTROW ********************************************************************************************/
  ScrollView {
id:scroll
      x: 295
      y: 17
      width: 50
      height: 510
      rotation: -270
      spacing:10
      visible: false
  ListView {
      x: 0
      y: 451
      width: 50
      height: 50
      clip: true
      model: 32

      delegate: ItemDelegate {

      Rectangle{
          height: 30
          width: 50
          color: "skyblue"
      }
      Rectangle{
          height: 30
          width: 50
          color: "skyblue"
      }
      Rectangle{
          height: 30
          width: 50
          color: "skyblue"
      }
      Rectangle{
          height: 30
          width: 50
          color: "skyblue"
      }

      }
  }
  }


  Rectangle {
      id:transrect
      visible: false

      x: 533
      y: 444
      width: 184
      height: 66
      color: "transparent"
      border.color: "#080000"
      border.width: 3
  }

  Tumbler {
      id: tumbler
      x: 604
      y: 179
      height: 590
      visibleItemCount: 14
      rotation: -90
      model: 32
      visible: false
  }
}
