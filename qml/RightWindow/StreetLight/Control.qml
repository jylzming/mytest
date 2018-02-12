import QtQuick 2.0
import QtQuick.Controls 1.4
import QtWebSockets 1.1
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
        id: lightControlRect
        anchors.top: zone.bottom
        width: parent.width
        height: lightControlText.height+10
        color: "#02222B"
        Text {
            id: lightControlText
            text: qsTr("控制管理")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.family: "Helvetica"
            font.pointSize: 16
            font.weight: Font.DemiBold
            color: "white"
        }
    }
    //工具栏
    Rectangle{
        id: cntlRect
        anchors.top: lightControlRect.bottom
        width: parent.width
        height: 30
        anchors.rightMargin: 20
        Row {
            spacing: 30
            anchors{
                right: parent.right
                rightMargin: 20
                verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: off
                width: 70
                height: 30
                MouseArea {
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                }
                Image {
                    id: offImg
                    source: "qrc:/images/streetLight/lightoff.png"
                    width: 30
                    height: 30
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    id: offText
                    text: qsTr("关灯")
                    font.family: "宋体"
                    font.pointSize: 14
                    font.weight: Font.DemiBold
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Rectangle {
                id: on
                width: 70
                height: 30
                MouseArea {
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                }
                Image {
                    id: onImg
                    source: "qrc:/images/streetLight/lighton.png"
                    height: 30
                    width: 30
                    anchors.left: parent.left
                }
                Text {
                    id: onText
                    text: qsTr("开灯")
                    font.family: "宋体"
                    font.pointSize: 14
                    font.weight: Font.DemiBold
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Rectangle {
                id: dimmingRect
                height: 30
                width: dimming.width+dimmingEditRect.width+dimmingRange.width
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 20
                Rectangle {
                    id: dimming
                    width: 70
                    height: 30
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: "PointingHandCursor"
                    }
                    Image {
                        id: dimmingImg
                        source: "qrc:/images/streetLight/brightness.png"
                        height: 30
                        width: 30
                        anchors.left: parent.left
                    }
                    Text {
                        id: dimmingText
                        text: qsTr("调光")
                        font.family: "宋体"
                        font.pointSize: 14
                        font.weight: Font.DemiBold
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                Rectangle {
                    id: dimmingEditRect
                    width: 50
                    height: 25
                    border.width: 1
                    anchors.left: dimming.right
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.IBeamCursor
                    }

                    TextEdit {
                        id: dimmingTextEdit
                        font.pointSize: 14
                        width: 50
                        height: parent.height
                        anchors.left: dimmingText.Right
                        anchors.leftMargin: 10
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Text {
                    id: dimmingRange
                    text: qsTr("0~100%")
                    font.family: "宋体"
                    font.pointSize: 14
                    font.weight: Font.DemiBold
                    anchors.left: dimmingEditRect.right
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
    //Table表
    Rectangle {
        width: parent.width
        height: parent.height
        anchors.top: cntlRect.bottom
        //anchors.fill: parent
        TableView {
            id: tableView
            anchors.fill: parent
            TableViewColumn {id: checkedColumn;role: "checked";title: qsTr( "Checked" );width: parent.width/11}
            TableViewColumn {role: "gateway";title: qsTr("网关");width: parent.width/11}
            TableViewColumn {role: "address";title: qsTr("地址");width: parent.width/11}
            TableViewColumn {role: "lightID";title: qsTr("ID");width: parent.width/11}
            TableViewColumn {role: "lightStat";title: qsTr("路灯状态");width: parent.width/11;}
            TableViewColumn {role: "netStat";title: qsTr("网络状态");width: parent.width/11;}
            TableViewColumn {role: "dimming";title: qsTr("亮度");width: parent.width/11}
            TableViewColumn {role: "voltage";title: qsTr("电压");width: parent.width/11}
            TableViewColumn {role: "current";title: qsTr("电流");width: parent.width/11}
            TableViewColumn {role: "power";title: qsTr("功率");width: parent.width/11}
            TableViewColumn {role: "updateTime";title: qsTr("更新时间");width: parent.width/11}

            rowDelegate: Item {
                height: 30
            }
            itemDelegate:Rectangle {
                border.color: "lightgray"
                color: styleData.selected? "gray":"white"
                Text {
                    text: styleData.value
                    //color: styleData.selected? "red" : styleData.textColor
                    elide: Text.ElideMiddle
                    anchors.centerIn: parent
                    //font.pixelSize: 20
                    fontSizeMode: Text.HorizontalFit
                }
            }
            headerDelegate: Rectangle{
                //implicitWidth: parent.width/11
                implicitHeight: 30
                color: "#215867"
                border.width: 1
                border.color: "lightgray"
                Text{
                    anchors.centerIn: parent
                    text: styleData.value
                    color: styleData.pressed ? "red" : "white"
                    font.bold: true
                    fontSizeMode: Text.HorizontalFit+2
                    //font.pixelSize: 20
                }
            }

            model: ListModel {
                id: tableModel
                ListElement {
                    checked: true
                    gateway: "LinoyaGW01"
                    address: "001"
                    lightID: "8002"
                    lightStat: "off"
                    netStat: "offline"
                    dimming: "--"
                    voltage: "--"
                    current: "--"
                    power: "--"
                    updateTime: "--"
                }
                ListElement {
                    checked: false
                    gateway: "LinoyaGW01"
                    address: "002"
                    lightID: "8003"
                    lightStat: "off"
                    netStat: "offline"
                    dimming: "--"
                    voltage: "--"
                    current: "--"
                    power: "--"
                    updateTime: "--"
                }
                ListElement {
                    checked: false
                    gateway: "LinoyaGW01"
                    address: "003"
                    lightID: "8004"
                    lightStat: "off"
                    netStat: "offline"
                    dimming: "--"
                    voltage: "--"
                    current: "--"
                    power: "--"
                    updateTime: "--"
                }
            }
            focus: true
        }
    }
}
