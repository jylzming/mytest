import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQml 2.2
import "./StreetLight"
import "../LeftBar"

//主体部分
Rectangle{
    id: root
//    anchors.fill: parent
//    anchors.centerIn: parent
    color: "#CCCCCC" //color: "#2E2F30"

    GridLayout {
        id: grid
        columns: 5
        rows: 4
        rowSpacing: 5
        columnSpacing: 5
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        MouseArea{
            anchors.fill: parent
            onReleased: {
                console.log("Gridlayout click!");
            }
        }

        Text {
            text: "天眼联动平台    "    //a basic greeting
            font.family: "宋体"
            font.pointSize: 24
            font.weight: Font.DemiBold
            color: "#5555FF"
            Layout.alignment: Qt.AlignRight
            Layout.columnSpan: 5
        }

        Image {
            id: image_light
            width: 400
            height: 200
            source: "qrc:/images/home/home_19.jpg"
            Layout.columnSpan: 2
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("lightImg click!");
                    rightWdRouter("qrc:/qml/RightWindow/StreetLight/Control.qml",{});
                    leftBar.visible = true;
                }
            }
        }

        Image {
            id: image_warning
            width: 200
            height: 200
            source: "qrc:/images/home/home_21.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                propagateComposedEvents: true
                onClicked: {
                    mouse.accepted = false
                    console.log("warningImg click!");
                }
            }
        }

        Image {
            id: image_moto
            width: 200
            height: 200
            source: "qrc:/images/home/home_23.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("motoImg click!");
                    ScoketCtl.sendData(2)
                }
            }

        }

        Image {
            id: image_police
            width: 200
            height: 200
            source: "qrc:/images/home/home_25.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("policeImg click!");
                    ScoketCtl.sendData(3)
                }
            }
        }

        Image {
            id: image_danger
            width: 200
            height: 200
            source: "qrc:/images/home/home_35.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("dangerImg click!");
                    ScoketCtl.sendData(4)
                }
            }
        }

        Image {
            id: image_wifi
            width: 200
            height: 200
            source: "qrc:/images/home/home_37.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("wifiImg click!");
                    ScoketCtl.sendData(5)
                }
            }
        }

        Image {
            id: image_carpark
            width: 400
            height: 200
            source: "qrc:/images/home/home_38.jpg"
            Layout.columnSpan: 2
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("carparkImg click!");
                    rightWdRouter("qrc:/qml/Carpark/CarparkCenter.qml",{});
                    leftBar.visible = true;
                }
            }
        }

        Image {
            id: image_flood
            width: 200
            height: 200
            source: "qrc:/images/home/home_39.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("floodImg click!");
                    ScoketCtl.sendData(7)
                }
            }
        }

        Image {
            id: image_question
            width: 200
            height: 200
            source: "qrc:/images/home/home_51.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("questionImg click!");
                    ScoketCtl.sendData(8)
                }
            }
        }

        Image {
            id: image_camera
            width: 400
            height: 200
            source: "qrc:/images/home/home_52.jpg"
            Layout.columnSpan: 2
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("cameraImg click!");
                    ScoketCtl.sendData(9)
                }
            }
        }

        Image {
            id: image_dust
            width: 200
            height: 200
            source: "qrc:/images/home/home_49.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("dustImg click!");
                    ScoketCtl.sendData(10)
                }
            }
        }

        Image {
            id: image_slide
            width: 200
            height: 200
            source: "qrc:/images/home/home_50.jpg"
            MouseArea {
                anchors.fill: parent;
                cursorShape: Qt.PointingHandCursor;
                acceptedButtons: Qt.LeftButton
                onReleased: {
                    console.log("slideImg click!");
                    ScoketCtl.sendData(11)
                }
            }
        }
    }
}
