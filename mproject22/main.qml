import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: wd
    width: 1280
    height: 720
    visible: true
    title: qsTr("Hello World")

    property color offf: "red"
    property color onn: "lightgreen"

    property bool flickbuttonpressed: true
    property string offstate: "Off"
    property string onstate: "On"
    property int selectedIndex : 0

    onSelectedIndexChanged: {
       // console.log("selected index", selectedIndex)

    }

    Row{
        id: bottomrow
        y: parent.height-100
        width: parent.width
        spacing: 30
        Rectangle
        {
            id:b1
            height:90
            width: 90
            color: "skyblue"
            radius:7
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

                    if((middlerow.visible===true)&&(transrect.visible===true)&&(flicakbleArea.visible===true ))
                    {
                        b1.color="skyblue"
                        middlerow.visible=false
                        transrect.visible=false
                        flicakbleArea.visible=false
                    }
                    else
                    {
                        b1.color="orange"
                        middlerow.visible=true
                        transrect.visible=true
                        flicakbleArea.visible=true
                    }


                }
            }
        }
        Rectangle
        {
            id:b2
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b3
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b4
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b5
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b6
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b7
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b8
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b9
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
        Rectangle
        {
            id:b10
            height:90
            width: 90
            color: "skyblue"
            radius:7
        }
    }
    /**************************************************************************** SECONDWINDOW  *********************************************************************************************/
    Row{
        id: middlerow
        x: 431
        y: 440
        spacing: 70
        visible: false

        Rectangle
            {
                id:sb1
                height:90
                width: 90
                color:"red"
                radius:7
                Text {
                    id: sb1text
                    anchors.centerIn: parent
                      text:selectedIndex
            }
            }
        Rectangle
            {
                id:sb2
                height:90
                width: 90
                color:"red"
                radius:7
                Text {
                    id: sb2text
                    anchors.centerIn: parent
                      text:selectedIndex+1


            }
            }
        Rectangle
            {
                id:sb3
                height:90
                width: 90
                color:"red"
                radius:7
                Text {
                    id: sb3text
                    anchors.centerIn: parent
                      text:selectedIndex+2


            }
            }
        Rectangle
            {
                id:sb4
                height:90
                width: 90
                color:"red"
                radius:7
                Text {
                    id: sb4text
                    anchors.centerIn: parent
                      text:selectedIndex+3

            }
            }

    }

/************************************************ UPPER ROW ****************************************************************************************/





    Flickable{
        id:flicakbleArea
        width:405
        x:2
        y: 147
        height:109
        anchors.margins: 5
        visible: false

        contentX:selectedIndex*100
        flickableDirection: Flickable.HorizontalFlick
        contentWidth: flickered.implicitWidth+300
        boundsBehavior: Flickable.StopAtBounds
        onMovementEnded: {
            console.log(contentX)

            var closestIndex = Math.round(contentX/100)
            selectedIndex = closestIndex
            if(selectedIndex==22)
            {
                console.log("hello")
                flicakbleArea.atXEnd
            }
            console.log("selected index", selectedIndex)
            sb1.color=flickRepeater.itemAt(selectedIndex).color
            sb2.color=flickRepeater.itemAt(selectedIndex+1).color
            sb3.color=flickRepeater.itemAt(selectedIndex+2).color
            sb4.color=flickRepeater.itemAt(selectedIndex+3).color
        }

        Row{
            id:flickered
            spacing: 10
            x: 0
            y: 10
            visible: true
            Repeater{
                id:flickRepeater
                model:25
                /*delegate: Button{

                    background:*/
                delegate:  Rectangle{
                        id:upprerect
                        color:"red"
                        radius:7
//                    }

                    width:90
                    height:90

//                    Text{
//                        id:flickbottomtext
//                        text:"Off"
//                        color:"white"
//                        font.pixelSize: 12
//                        anchors.bottom: parent.bottom
//                        anchors.horizontalCenter: parent.horizontalCenter
//                    }
                    Text{
                        id:flickmiddletext
                        text:index
                        color:"white"
                        font.pixelSize: 12
                        anchors.bottom: parent.Center
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    MouseArea{
                        anchors.fill:parent
                        onPressed: {
//                            console.log(flickered.index)
                            if( upprerect.color==offf)
                            {
//                                flickbottomtext.text=onstate
                                upprerect.color=onn



                            }
                            else
                            {
//                                flickbottomtext.text=offstate
                                upprerect.color=offf

                            }
                            sb1.color=flickRepeater.itemAt(selectedIndex).color
                            sb2.color=flickRepeater.itemAt(selectedIndex+1).color
                            sb3.color=flickRepeater.itemAt(selectedIndex+2).color
                            sb4.color=flickRepeater.itemAt(selectedIndex+3).color

                        }
                    }
                }
            }

        }
    }
    Rectangle {
        id:transrect
        visible: false
        x: 2
        y: 147
        width: 405
        height: 109
        color: "transparent"
        border.color: "#080000"
        border.width: 3


    }
}
