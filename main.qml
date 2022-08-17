import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Window {

    id: windMain
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    visible: true
    title: qsTr("Secret Friend")

        Rectangle {
            id: content
            color: "#747E7E"
            height: windMain.height
            width: windMain.width

            Column {
                width: parent.width
                height: parent.height
                spacing: 30
                Rectangle {
                    id: header1
                    width: parent.width
                    height: parent.height/5
                    color: "#ff5f5d"
                    Text {
                        topPadding: header1.height/2
                        text: "ТАЙНЫЙ ДРУГ"
                        font.pointSize: 30; font.bold: true; color: "white"
                        anchors.horizontalCenter: header1.horizontalCenter
                    }
                }
                Rectangle {
                    id: contentRect
                    width: windMain.width
                    height: windMain.height/2
                    color: "#747E7E"
                    Column {
                        height: parent.height
                        width: parent.width
                        Element {
                            id: element1
                            width: windMain.width
                        }
                        Element {
                            id: element2
                            width: windMain.width
                        }
                        Element {
                            id: element3
                            width: windMain.width
                        }
                    }
                }
                //sdjsijvisdhvuisduivsuib//
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


                            // ----- footer__btn ----
                            FooterBtn {
                                anchors {
                                    right: parent.right
                                    bottom: parent.bottom
                                }

                                btnWidth: 75

                                iconSource: 'qrc:/img/create-session.svg'
                                iconWidth: 28
                            }
                        }
                    }
                }
            }
        }
}
