import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id: rect
        anchors.centerIn: parent
        width: 300
        height: 300
        color: "grey"

    }

    ComboBox{
        id: comb
        model: ['select color','red','blue','yellow']
        onCurrentTextChanged: {
            if(currentText=="red")
                rect.color="red"
            else if(currentText=="blue")
                rect.color="blue"
            else if(currentText=="yellow")
                rect.color="yellow"
        }
    }


}
