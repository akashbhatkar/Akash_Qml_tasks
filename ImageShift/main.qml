import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int count: 1

    Image {

        id: img

        width: parent.width
        height: parent.height-100
        source: "qrc:/Images/Screenshot (1).png"

    }

    Button {
        id: button
        x: 12
        y: 412
        width: 243
        height: 40
        text: qsTr("Prev")
        onClicked: {
            count--
            if(count===11)
            {
                count=1
            }
            else if(count===0)
                count=10
            switch(count)
            {
                case 1: img.source= "qrc:/Images/Screenshot (1).png"
                        break;
                case 2: img.source= "qrc:/Images/Screenshot (2).png"
                        break;
                case 3: img.source= "qrc:/Images/Screenshot (21).png"
                        break;
                case 4: img.source= "qrc:/Images/Screenshot (24).png"
                        break;
                case 5: img.source= "qrc:/Images/Screenshot (25).png"
                        break;
                case 6: img.source= "qrc:/Images/Screenshot (26).png"
                        break;
                case 7: img.source= "qrc:/Images/Screenshot (27).png"
                        break;
                case 8: img.source= "qrc:/Images/Screenshot (3).png"
                        break;
                case 9: img.source= "qrc:/Images/Screenshot (4).png"
                        break;
                case 10: img.source= "qrc:/Images/Screenshot (5).png"
                        break;

            }

        }

    }

    Button {
        id: button1
        x: 371
        y: 412
        width: 224
        height: 40
        text: qsTr("Next")
        onClicked: {
            count++
            if(count===11)
            {
                count=1
            }
            else if(count===0)
                count=10
            switch(count)
            {
                case 1: img.source= "qrc:/Images/Screenshot (1).png"
                        break;
                case 2: img.source= "qrc:/Images/Screenshot (2).png"
                        break;
                case 3: img.source= "qrc:/Images/Screenshot (21).png"
                        break;
                case 4: img.source= "qrc:/Images/Screenshot (24).png"
                        break;
                case 5: img.source= "qrc:/Images/Screenshot (25).png"
                        break;
                case 6: img.source= "qrc:/Images/Screenshot (26).png"
                        break;
                case 7: img.source= "qrc:/Images/Screenshot (27).png"
                        break;
                case 8: img.source= "qrc:/Images/Screenshot (3).png"
                        break;
                case 9: img.source= "qrc:/Images/Screenshot (4).png"
                        break;
                case 10: img.source= "qrc:/Images/Screenshot (5).png"
                        break;

            }

        }
    }


}
