import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle {
    property string iconSource
    property int btnWidth
    property int iconWidth

    id: footer__btn
    width: btnWidth
    height: footer__btn.width
    color: '#FF5F5D'
    radius: 100

    Image {
        id: footerBtn__icon
        width: iconWidth
        source: iconSource
        fillMode: Image.PreserveAspectFit

        anchors {
            centerIn: parent
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        Connections {
            onClicked: {
                footer__btn.color = '#FF5F5D'
            }

            onEntered: {
                footer__btn.color = '#E02A28'
            }

            onExited: {
                footer__btn.color = '#FF5F5D'
            }
        }
    }
}
