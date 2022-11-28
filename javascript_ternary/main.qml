import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id: rect
        height: 300
        width: 300
        color: "orange"

        MouseArea{
            anchors.fill: parent

            onClicked: {
                var max = root.width-rect.width

                rect.x= (rect.x==0)?  max:0
            }
        }
    }
}
