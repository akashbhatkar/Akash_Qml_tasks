import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup{
        id: popp
        height: 400
        width: 300
        anchors.centerIn: parent
Column{
    spacing: 20
    anchors.centerIn:   parent

        Label{
            id: lbl
            text: qsTr("select drink")
        }

        Label{

            id: labelfood
            text: qsTr("select food")
        }


        Button{

            id: closebutton
            text: qsTr("Close")


            onClicked: popp.close()
        }

    }
    }

    GroupBox {
        id: foodgroup
        x: 86
        y: 123
        width: 200
        height: 200
        title: qsTr("Food ")

        RadioButton {
            id: pizzaradio
            x: 0
            y: 10
            text: qsTr("Pizza")
        }

        RadioButton {
            id: pastaradio
            x: 0
            y: 56
            text: qsTr("Pasta")
        }

        RadioButton {
            id: sandwichradio
            x: 0
            y: 102
            text: qsTr("sandwich")
        }
    }

    GroupBox {
        id: drinksgroup
        x: 344
        y: 123
        width: 200
        height: 200
        title: qsTr("Drinks ")

        RadioButton {
            id: pepsiradio
            x: 0
            y: 19
            text: qsTr("pepsi")
        }

        RadioButton {
            id: colaradio
            x: 0
            y: 68
            text: qsTr("cola")
        }

        RadioButton {
            id: mazaradio
            x: 0
            y: 114
            text: qsTr("maza ")
        }
    }

    Button {
        id: showbutton
        x: 207
        y: 379
        width: 216
        height: 40
        text: qsTr("Show ")

        onClicked: {
            popp.open()
            if(pepsiradio.checked)
            lbl.text= "pepsi "
            else if(mazaradio.checked)
                lbl.text= "maza"
            else if (colaradio.checked)
                lbl.text="cola"

            if(pizzaradio.checked)
            labelfood.text= "pizz "
            else if(pastaradio.checked)
                labelfood.text= "pasta"
            else if (sandwichradio.checked)
                labelfood.text="sandwich"


        }
    }

}
