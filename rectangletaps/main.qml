import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle
    {
        width: 100
        height: 100
        x: 200
        y:200
        z:1
        color: taphandler.pressed?"blue":"red"

        TapHandler
        {
            id: taphandler

        }
    }
    Rectangle{
        width: 100
        height: 100
        x:350
        y: 200
        color: th2.pressed?"red":"blue"
        TapHandler
        {
            id: th2
        }

    }
}
