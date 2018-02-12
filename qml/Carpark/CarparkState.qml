import QtQuick 2.0
import QtQuick 2.7
import Qt.labs.platform 1.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
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
        id: cpstateRect
        anchors.top: titleRect.bottom
        anchors.topMargin: 30
        width: parent.width
        anchors.bottom: parent.bottom
        Rectangle{
            id:area1
            width: parent.width-40
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            GridLayout {
                id: carStateGrid1
                columns: 10
                rowSpacing: 0
                columnSpacing: 0
                Rectangle {width:80;height:width*1.5;border.color: "green"
                Text{text: "A001";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A002";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A003";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A004";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A005";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A006";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A007";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A008";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A009";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A010";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A011";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A012";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A013";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A014";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A015";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A016";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A017";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A018";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A019";font.pixelSize: 18;font.bold: true}}
                Rectangle {width:80;height:width*1.5;border.color: "green"
                    Text{text: "A020";font.pixelSize: 18;font.bold: true}}
            }
        }
    }

/*    Rectangle {
        id: cpstateRect
        anchors.top: titleRect.bottom
        width: parent.width
        anchors.bottom: parent.bottom
        Component{
            id: ckStateDelg
            Rectangle {
                width: cpGrid.cellWidth;
                height: cpGrid.cellHeight
                border.color: "cyan"
                Text {
                    text: name
                    font.pixelSize: 18
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: console.log("点击了Item！")
                }
            }
        }
        ListModel {
            id: ckStateListElem
            ListElement{ name:"A001"}
            ListElement{ name:"A002"}
            ListElement{ name:"A003"}
            ListElement{ name:"A004"}
            ListElement{ name:"A005"}
            ListElement{ name:"A006"}
            ListElement{ name:"A007"}
            ListElement{ name:"A008"}
            ListElement{ name:"A009"}
            ListElement{ name:"A010"}
            ListElement{ name:"A011"}
            ListElement{ name:"A012"}
            ListElement{ name:"A013"}
            ListElement{ name:"A014"}
            ListElement{ name:"A015"}
            ListElement{ name:"A016"}
            ListElement{ name:"A017"}
            ListElement{ name:"A018"}
            ListElement{ name:"A019"}
            ListElement{ name:"A020"}
            ListElement{ name:"A021"}
            ListElement{ name:"A022"}
            ListElement{ name:"A023"}
            ListElement{ name:"A024"}
            ListElement{ name:"A025"}
            ListElement{ name:"A026"}
            ListElement{ name:"A027"}
            ListElement{ name:"A028"}
            ListElement{ name:"A029"}
            ListElement{ name:"A030"}
            ListElement{ name:"A031"}
            ListElement{ name:"A032"}
            ListElement{ name:"A033"}
            ListElement{ name:"A034"}
            ListElement{ name:"A035"}
            ListElement{ name:"A036"}
            ListElement{ name:"A037"}
            ListElement{ name:"A038"}
            ListElement{ name:"A039"}
            ListElement{ name:"A040"}
            ListElement{ name:"A041"}
            ListElement{ name:"A042"}
            ListElement{ name:"A043"}
            ListElement{ name:"A044"}
            ListElement{ name:"A045"}
            ListElement{ name:"A046"}
            ListElement{ name:"A047"}
            ListElement{ name:"A048"}
            ListElement{ name:"A049"}
            ListElement{ name:"A050"}
        }
        GridView {
            id: cpGrid
            //property int number: 60
            anchors.fill: parent
            cellWidth: root.width/10; cellHeight: root.height/8
            delegate: ckStateDelg
            model: ckStateListElem
        }
    }*/
}
