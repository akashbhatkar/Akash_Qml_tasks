import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Grid
    {
        anchors.centerIn: parent
        spacing: 5
        rows: 3
        columns: 3
        MyShape{color: "green"}
        MyShape{color: "orange"}
        MyShape{color: "skyblue"}
        MyShape{color: "blue"}
        MyShape{color: "white"}
        MyShape{color: "black"}
        MyShape{color: "grey"}
        MyShape{color: "teal"}
        MyShape{color: "brown"}

    }
}
