import QtQuick 2.1

Item {
    id: colorButton
    width: 13
    height: 15


    property string imageName: ""

    signal clicked()

    Rectangle {
       id: selectArea
       anchors.centerIn: parent
       width: 11
       height: 13
       radius: 4

       visible: false
       color: "white"
       opacity: 0.2
    }

    Image {
        id:colorImage
        anchors.centerIn: parent
        source: "../image/color/" + colorButton.imageName + ".png"
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            colorImage.source = "../image/color/" + colorButton.imageName + "_hover.png"
        }
        onExited: {
            colorImage.source = "../image/color/" + colorButton.imageName + ".png"
        }

        onClicked:{
            colorTool.imageName = imageName
            colorTool.color = imageName
        }

    }

}