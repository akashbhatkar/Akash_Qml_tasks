import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rectangle moving animation app")
    id: root

    Rectangle{
        id: rectangle
        height: 100
        width: 100
        x:0
        y:parent.height/2-100
        color: "red"

        PropertyAnimation{
            id: animationRight
            target: rectangle
            property: "x"  //to determine which properties should be animated.
            to: root.width-rectangle.width //to the point where it has to move
            duration: 500 //durationof animation

        }
        PropertyAnimation{
            id: animationleft
            target:  rectangle
            property:"x"
            to: 0
            duration: 500
        }

        MouseArea{
            anchors.fill:rectangle

            onClicked: {
                if(rectangle.x==0)
                animationRight.start()
                else
                    animationleft.start()
            }




        }
    }
}
