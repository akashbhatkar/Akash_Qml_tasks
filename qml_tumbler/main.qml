import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property var code: "512"
    property string status: "Unlocked"

    Popup{
        id: popp
        height: 400
        width: 300
        anchors.centerIn: parent
        Label{
            anchors.centerIn: parent
            font.bold: true
            font.pointSize: 30
            id: poplabel
            text: status
        }
    }

    Column {
        id: column
        x: 220
        y: 34
        width: 346
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        id: label
        x: 282
        y: 84
        width: 83
        height: 36
        text: qsTr("000")
        font.pointSize: 21
        font.bold: true
    }

    Tumbler {
        id: tumbler
        x: 199
        y: 140
        width: 71
        height: 200
        model: 10
        onCurrentIndexChanged: {
            label.text= tumbler.currentIndex+""+tumbler1.currentIndex+""+tumbler2.currentIndex
}
    }

    Tumbler {
        id: tumbler1
        x: 282
        y: 140
        width: 68
        height: 200
        model: 10
        onCurrentIndexChanged: {
            label.text= tumbler.currentIndex+""+tumbler1.currentIndex+""+tumbler2.currentIndex
}
    }

    Tumbler {
        id: tumbler2
        x: 350
        y: 140
        width: 82
        height: 200
        model: 10
        onCurrentIndexChanged: {
            label.text= tumbler.currentIndex+""+tumbler1.currentIndex+""+tumbler2.currentIndex
}
    }

    Button {
        id: button
        x: 266
        y: 364
        text: qsTr("Check")

        onClicked: {
            if((tumbler.currentIndex+""+tumbler1.currentIndex+""+tumbler2.currentIndex)===code)
                poplabel.text=status
            else
                poplabel.text="Locked"
            popp.open()

        }
    }

}
