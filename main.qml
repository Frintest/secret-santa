import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: app
    width: 375
    height: 812
    visible: true
    title: qsTr("Тайный Санта")

    Rectangle {
        id: root
        width: app.width
        height: app.height

        // ----- footer -----
        Rectangle {
            id: footer
            width: root.width
            height: 200
            color: '#747E7E'

            Rectangle {
                id: footer__container
                width: 295
                height: footer.height
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                color: '#747E7E'

                Row {
                    id: footer__row
                    width: footer__container.width
                    height: 115
                    anchors {
                        centerIn: parent
                    }

                    // ----- footer__btn -----
                    FooterBtn {
                        anchors {
                            left: parent.left
                            bottom: parent.bottom
                        }

                        btnWidth: 75

                        iconSource: 'qrc:/img/account.svg'
                        iconWidth: 30
                    }


                    // ----- footer__btn_big -----
                    FooterBtn {
                        anchors {
                            horizontalCenter: parent.horizontalCenter
                            top: parent.top
                        }

                        btnWidth: 100

                        iconSource: 'qrc:/img/home.svg'
                        iconWidth: 52
                    }


                    // ----- footer__btn -----
                    FooterBtn {
                        anchors {
                            right: parent.right
                            bottom: parent.bottom
                        }

                        btnWidth: 75

                        iconSource: 'qrc:/img/account.svg'
                        iconWidth: 28
                    }
                }
            }
        }
    }
}
