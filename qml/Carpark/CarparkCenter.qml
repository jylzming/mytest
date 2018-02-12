import QtQuick 2.0
import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.3
Rectangle{
    id: root
    anchors.fill: parent
    color: "#CCCCCC"
    //区域栏
    Rectangle{
        id: zone
        width: parent.width
        height: zoneRow.height+10
        anchors.top: parent.top
        Row{
            id: zoneRow
            spacing: 10
            anchors.verticalCenter: parent.verticalCenter
            Text {
                id: zone1
                text: qsTr("领亚松山湖工业园")
                font.family: "Helvetica"
                font.pointSize: 12
                font.weight: Font.DemiBold
                color: "black"
                MouseArea{
                    anchors.fill: parent;
                    acceptedButtons: Qt.LeftButton;
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                }
            }
            Rectangle{
                width: 1; height: parent.height; color: "black";
            }
            Text {
                id: zone2
                text: qsTr("领亚企石AC工业园")
                font.family: "Helvetica"
                font.pointSize: 12
                font.weight: Font.DemiBold
                color: "gray"
                MouseArea{
                    anchors.fill: parent;
                    acceptedButtons: Qt.LeftButton;
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: unauthorizedDlg.visible =true
                }
            }
            Rectangle{
                width: 1; height: parent.height; color: "black";
            }
            Text {
                id: zone3
                text: qsTr("领亚企石瑞桥工业园")
                font.family: "Helvetica"
                font.pointSize: 12
                font.weight: Font.DemiBold
                color: "gray"
                MouseArea{
                    anchors.fill: parent;
                    acceptedButtons: Qt.LeftButton;
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: unauthorizedDlg.visible =true
                }
            }
            Rectangle{
                width: 1; height: parent.height; color: "black";
            }
            Text {
                id: zone4
                text: qsTr("领亚深圳工业园")
                font.family: "Helvetica"
                font.pointSize: 12
                font.weight: Font.DemiBold
                color: "gray"
                MouseArea{
                    anchors.fill: parent;
                    acceptedButtons: Qt.LeftButton;
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: unauthorizedDlg.visible =true
                }
            }
            Rectangle{
                width: 1; height: parent.height; color: "black";
            }
            Text {
                id: zone5
                text: qsTr("苏州新亚工业园")
                font.family: "Helvetica"
                font.pointSize: 12
                font.weight: Font.DemiBold
                color: "gray"
                MouseArea{
                    anchors.fill: parent;
                    acceptedButtons: Qt.LeftButton;
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: unauthorizedDlg.visible =true
                }
            }
        }
        Dialog {
              id: unauthorizedDlg
              //visible: true
              title: "Unauthorized"
              standardButtons: StandardButton.Ok
              width: 300
              height: 200
              contentItem: Rectangle {
                  anchors.fill: parent

                  Text {
                      text: qsTr("未授权！请联系管理员...")
                      color: "red"
                      anchors.horizontalCenter: parent.horizontalCenter
                      anchors.top: parent.top
                      anchors.topMargin: 60
                      font.pixelSize: 24
                      font.bold: true
                  }
                  Button {
                      anchors.bottom: parent.bottom
                      anchors.bottomMargin: 20
                      anchors.horizontalCenter: parent.horizontalCenter
                      text: qsTr("OK")
                      onClicked: unauthorizedDlg.close()
                  }

              }
          }
    }
    //标题栏
    Rectangle{
        id: titleRect
        anchors.top: zone.bottom
        width: parent.width
        height: titleText.height+10
        color: "#02222B"
        Text {
            id: titleText
            text: qsTr("基本信息")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.family: "Helvetica"
            font.pointSize: 16
            font.weight: Font.DemiBold
            color: "white"
        }
    }
    //操作栏
    Rectangle {
        id: carparkcenter
        anchors.top: titleRect.bottom
        width: parent.width
        anchors.bottom: parent.bottom
        Column {
            spacing: 1
            Rectangle {
                height: 200
                width: root.width
                Rectangle{
                    id:leftRect1
                    height: parent.height
                    width: 300
                    anchors.left: parent.left
                    Image {source: "qrc:/images/carpark/carBaseLeft2.jpg";anchors.centerIn: parent}
                }
                Rectangle{
                    height: 160
                    anchors.left: leftRect1.right
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    Component{
                        id: ckCenterDelg1
                        Item {
                            width: grid1.cellWidth
                            height: grid1.cellHeight
                            Column {
                                anchors.fill: parent
                                anchors.centerIn: parent
                                spacing: 5
                                Image { source: imgSource; anchors.horizontalCenter: parent.horizontalCenter }
                                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: "PointingHandCursor"
                                onClicked: console.log("点击了Item！")
                            }
                        }
                    }
                    ListModel {
                        id: ckCenterListElem1
                        ListElement{imgSource:"qrc:/images/carpark/2-1.jpg"; name:"NB-Iot"}
                        ListElement{imgSource:"qrc:/images/carpark/2-2.jpg"; name:"POS机器"}
                        ListElement{imgSource:"qrc:/images/carpark/2-3.jpg"; name:"地磁"}
                        ListElement{imgSource:"qrc:/images/carpark/2-4.jpg"; name:"网关"}
                        ListElement{imgSource:"qrc:/images/carpark/2-5.jpg"; name:"RFID"}
                        ListElement{imgSource:"qrc:/images/carpark/2-6.jpg"; name:"雷达"}
                        ListElement{imgSource:"qrc:/images/carpark/2-7.jpg"; name:"执勤PDA"}
                    }
                    GridView {
                        id: grid1
                        anchors.fill: parent
                        cellWidth: 120; cellHeight: 80
                        delegate: ckCenterDelg1
                        model: ckCenterListElem1
                        //highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                        focus: true
                    }

                }
            }
            Rectangle{width: root.width*0.9; height: 2; anchors.horizontalCenter: parent.horizontalCenter;color: "cyan"}
            Rectangle {
                height: 200
                width: root.width
                Rectangle{
                    id:leftRect2
                    height: parent.height
                    width: 300
                    anchors.left: parent.left
                    Image {source: "qrc:/images/carpark/carBaseLeft1.jpg";anchors.centerIn: parent}
                }
                Rectangle{
                    height: 160
                    anchors.left: leftRect2.right
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    Component{
                        id: ckCenterDelg2
                        Item {
                            width: grid2.cellWidth;
                            height: grid2.cellHeight
                            Column {
                                anchors.fill: parent
                                anchors.centerIn: parent
                                spacing: 5
                                Image { source: imgSource; anchors.horizontalCenter: parent.horizontalCenter }
                                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: "PointingHandCursor"
                                onClicked: console.log("点击了Item！")
                            }
                        }
                    }
                    ListModel {
                        id: ckCenterListElem2
                        ListElement{imgSource:"qrc:/images/carpark/btn1.jpg"; name:"停车诱导"}
                        ListElement{imgSource:"qrc:/images/carpark/btn2.jpg"; name:"数据交换"}
                        ListElement{imgSource:"qrc:/images/carpark/btn3.jpg"; name:"系统设置"}
                        ListElement{imgSource:"qrc:/images/carpark/btn4.jpg"; name:"指挥调度"}
                        ListElement{imgSource:"qrc:/images/carpark/btn5.jpg"; name:"车主服务"}
                        ListElement{imgSource:"qrc:/images/carpark/btn6.jpg"; name:"交易处理"}
                        ListElement{imgSource:"qrc:/images/carpark/btn7.jpg"; name:"清分结算"}
                        ListElement{imgSource:"qrc:/images/carpark/btn8.jpg"; name:"发单处罚"}
                    }
                    GridView {
                        id: grid2
                        anchors.fill: parent
                        cellWidth: 120; cellHeight: 80
                        delegate: ckCenterDelg2
                        model: ckCenterListElem2
                        //highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                        focus: true
                    }

                }
            }
            Rectangle{width: root.width*0.9; height: 2; anchors.horizontalCenter: parent.horizontalCenter;color: "cyan"}
            Rectangle {
                height: 200
                width: root.width
                Rectangle{
                    id:leftRect3
                    height: parent.height
                    width: 300
                    anchors.left: parent.left
                    Image {source: "qrc:/images/carpark/carBaseLeft3.jpg";anchors.centerIn: parent}
                }
                Rectangle{
                    height: 160
                    anchors.left: leftRect3.right
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    Component{
                        id: ckCenterDelg3
                        Item {
                            width: grid3.cellWidth;
                            height: grid3.cellHeight
                            Column {
                                anchors.fill: parent
                                anchors.centerIn: parent
                                spacing: 5
                                Image { source: imgSource; anchors.horizontalCenter: parent.horizontalCenter }
                                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: "PointingHandCursor"
                                onClicked: console.log("点击了Item！")
                            }
                        }
                    }
                    ListModel {
                        id: ckCenterListElem3
                        ListElement{imgSource:"qrc:/images/carpark/2-1.jpg"; name:"客户中心"}
                        ListElement{imgSource:"qrc:/images/carpark/2-2.jpg"; name:"微信公众号"}
                        ListElement{imgSource:"qrc:/images/carpark/2-3.jpg"; name:"车主服务APP"}
                        ListElement{imgSource:"qrc:/images/carpark/2-4.jpg"; name:"服务设置"}
                        ListElement{imgSource:"qrc:/images/carpark/2-5.jpg"; name:"支付宝服务"}
                    }
                    GridView {
                        id: grid3
                        anchors.fill: parent
                        cellWidth: 120; cellHeight: 80
                        delegate: ckCenterDelg3
                        model: ckCenterListElem3
                        //highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                        focus: true
                    }

                }
            }

        }
    }
}
