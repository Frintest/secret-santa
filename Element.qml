import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Rectangle{
    id: element1
    height: parent.height/3
    color: "#747E7E"
    border.color: "white"
    MouseArea{
        anchors.fill: parent

        hoverEnabled: true
        onEntered: {
            parent.color = "#3F7C85"
        }
        onExited: {
            parent.color = "#747E7E"
        }
    }

    Image {
        id: fimage
        source: "/img/green.svg"
        anchors.verticalCenter: parent.verticalCenter
        x: 5
    }
    Text{
        text: "МАЖОРИКИ 😎"
        font.pointSize: 20;color: "white"
        anchors.verticalCenter: parent.verticalCenter/2
        leftPadding: 35
    }
    Text {
        id: name
        text: "8 участников"
        font.pointSize: 16;color: "white";
        y: parent.height/1.75
        leftPadding: 35
    }
    Text{
        id: number
        text: "1000$"
        font.pointSize: 16;color: "white";
        anchors.right: element1.right
        rightPadding: 20
        anchors.verticalCenter: element1.verticalCenter/1.75
    }
    Text {
        id: date
        text: "18.04"
        font.pointSize: 16;color: "white";
        anchors.right: element1.right
        rightPadding: 20
        y: parent.height/1.75
    }
}
