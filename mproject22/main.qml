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
    property string offimage: "qrc:/Images/Light_Off.jpg"
    property string onimage: "qrc:/Images/Light_On.jpg"

    onSelectedIndexChanged: {
        // console.log("selected index", selectedIndex)

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
            middlerepeat.itemAt(0).color=flickRepeater.itemAt(selectedIndex).color

            middlerepeat.itemAt(1).color=flickRepeater.itemAt(selectedIndex+1).color

            middlerepeat.itemAt(2).color=flickRepeater.itemAt(selectedIndex+2).color

            middlerepeat.itemAt(3).color=flickRepeater.itemAt(selectedIndex+3).color

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
                    border.color: "black"
                    border.width: 2
                    //                    }

                    width:90
                    height:90

                    Text{
                        id:flickbottomtext
                        text:"Off"
                        color:"white"
                        font.pixelSize: 12
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Image {
                        id: flickmiddleimage
                        anchors.bottom: flickbottomtext.top
                        anchors.top: flickmiddletext.bottom
                        width: parent.width
                        source: "qrc:/Images/Light_Off.jpg"

                    }
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
                                flickbottomtext.text=onstate
                                upprerect.color=onn
                                flickmiddleimage.source=onimage

                            }
                            else
                            {
                                flickbottomtext.text=offstate
                                upprerect.color=offf
                                flickmiddleimage.source=offimage

                            }
                            middlerepeat.itemAt(0).color=flickRepeater.itemAt(selectedIndex).color
                            middlerepeat.itemAt(1).color=flickRepeater.itemAt(selectedIndex+1).color
                            middlerepeat.itemAt(2).color=flickRepeater.itemAt(selectedIndex+2).color
                            middlerepeat.itemAt(3).color=flickRepeater.itemAt(selectedIndex+3).color

                        }
                    }
                }
            }

        }
    }

    /**************************************************************************** SECONDWINDOW  *********************************************************************************************/
    Row{
        id: middlerow
        x: 431
        y: 440
        spacing: 70
        visible: false
        Repeater{
            id:middlerepeat
            model:4


            Rectangle
            {
                id:sb1
                height:90
                width: 90
                color:"red"
                radius:7
                Text {
                    id: sb1text
                    color: "white"
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom-70
                    anchors.centerIn:parent.width/2
                    anchors.horizontalCenter: parent
                    text:{
                        if(sb1===middlerepeat.itemAt(0))
                        {
                            selectedIndex

                        }
                        else if(sb1===middlerepeat.itemAt(1))
                        {
                            selectedIndex+1
                        }
                        else if(sb1===middlerepeat.itemAt(2))
                        {
                            selectedIndex+2
                        }
                        else if(sb1===middlerepeat.itemAt(3))
                        {
                            selectedIndex+3
                        }

                    }
                }
                Image {
                    id: middlerepeatimage
                    height: parent.height-sb1text.height
                    width: parent.width
                    anchors.top: sb1text.bottom
                    anchors.bottom: sb1bottomtext.top
                    source:{
                        if(sb1.color===offf)
                        {
                            "qrc:/Images/Light_Off.jpg"
                        }
                        else
                            "qrc:/Images/Light_On.jpg"
                    }
                }
                Text {
                    anchors.top: middlerepeatimage.bottom
                    height: sb1text.height
                    width: sb1.width
                    anchors.horizontalCenter: parent
                    id: sb1bottomtext
                    color: "white"
                    text: {
                        if(sb1.color===offf)
                        {
                            offstate
                        }
                        else
                            onstate
                    }
                }
            }
        }
    }
    /************************************** BOTTTOM ROW *****************************************************************************************************/
    Row{
        id: bottomrow
        y: parent.height-100
        width: parent.width
        spacing: 30
        Repeater{
            id:bottomrepeat
            model: 10

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
                    text: {
                        if(b1===bottomrepeat.itemAt(0))
                        {
                            "Click me"
                        }
                        else
                            " "

                    }

                    font.bold: true
                    font.pointSize: 10
                }
                MouseArea{
                    anchors.fill: bottomrepeat.itemAt(0)
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
