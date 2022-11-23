import QtQuick 2.0

Item {
    id: root
    property color color: "grey"
    property string text: "Title"
    height: 100
    width: 100

    Rectangle{
        color: root.color
        anchors.fill: parent
        Text {
            anchors.centerIn: parent
           text: root.text
        }
        MouseArea{
            anchors.fill: parent
            drag.target: root.parent
            onClicked: root.parent.z++
        }
    }

}
