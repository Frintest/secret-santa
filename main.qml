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
            id: header
            color: "#747E7E"
            height: windMain.height
            width: windMain.width
            //шапка//
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
                        y: header1.height/2
                        text: "ТАЙНЫЙ ДРУГ"
                        font.pointSize: 30; font.bold: true; color: "white"
                        anchors.horizontalCenter: header1.horizontalCenter
                    }
                }
                //контент//
                Rectangle{
                    id:content
                    width: windMain.width
                    height: windMain.height/3
                    color: "black"
                }

                Rectangle {
                    id: footerRect
                    width: windMain.width
                    height: windMain.height/2
                    color: "#747E7E"
                    Rectangle {
                        id: footer
                        width: windMain.width-80
                        height: header1.height
                        y:windMain.height/2
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "black"
                        // ----- footer__btn -----
                        FooterBtn {
                            anchors {
                                left: footer.left
                                bottom: footer.bottom
                            }
                            btnWidth: 75
                            iconSource: 'qrc:/img/account.svg'
                            iconWidth: 50
                        }


                        // ----- footer__btn_big -----
                        FooterBtn {
                            anchors {
                                horizontalCenter: parent.horizontalCenter
                                top: parent.top
                            }

                            btnWidth: 100

                            iconSource: 'qrc:/img/home button.svg'
                            iconWidth: 100
                        }


                        // ----- footer__btn ----
                        FooterBtn {
                            anchors {
                                right: parent.right
                                bottom: footer.bottom
                            }

                            btnWidth: 75

                            iconSource: 'qrc:/img/create session.svg'
                            iconWidth: 50
                        }
                    }
                }
                //кнопки//
                    }
                }
            }
