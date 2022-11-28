import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")



    property color redcolor: "red"
    property color greencolor: "green"
    property color yellowcolor: "yellow"

    function checkcolor()
    {

        if(root.color===redcolor)
        {
            root.color=greencolor
        }

        if(root.color===greencolor)
        {
            root.color=yellowcolor
        }
        if(root.color===yellowcolor)
        {
            root.color=redcolor
        }
    }

    Column
    {
        anchors.centerIn: parent
        spacing: 10
        Rectangle{
            width: 100
            height: 100
            color: "red"

            MouseArea{
                id: red
                anchors.fill: parent
                onClicked: {
                    root.color=yellowcolor

                    checkcolor
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "yellow "
            MouseArea{
                id:  yellow
                anchors.fill: parent
                onClicked: {
                    root.color=greencolor
                    checkcolor
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "green"
            MouseArea{
                id: green
                anchors.fill: parent
                onClicked:{
                    root.color=redcolor
                    checkcolor
                }
            }

        }

    }



}
