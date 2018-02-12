import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import "./qml/TitleBar"
import "./qml/RightWindow"
import "./qml/StatusBar"
import "./qml/LeftBar"


Window {
    id: mainWindow
    visible: true
    width: 1130
    height: 850
    title: qsTr("TinoaSystem")
    color: "#CCCCCC";
    flags: Qt.FramelessWindowHint | Qt.Window;

    Rectangle{
        anchors.fill: parent
        width: parent.width - 2;
        height: parent.height - 2;

        //标题部分
        TitileBar {
            id: titleBar;
            width: parent.width;
            height: 70;
            color: "#17202C"
        }

        Rectangle {
            anchors.top: titleBar.bottom;
            anchors.left: parent.left;
            anchors.right: parent.right;
            anchors.bottom:statusBar.top;
            //左侧工具栏
            LeftBar {
                id: leftBar
                height: parent.height
                width: visible? 250:0
                anchors.left: parent.left
                anchors.top: parent.top
                visible: false
            }
            //主体部分
//            Home {
//                id: rightWindow
//                height: parent.height
//                anchors.left: leftBar.right
//                anchors.right: parent.right
//            }
            Loader{
                id:rightWd;
                anchors.left: leftBar.right;
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                source: "qrc:/qml/RightWindow/Home.qml";
                }
        }
        //状态栏部分
        StatusBar {
            id: statusBar;
            width: parent.width;
            height: 50;
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color: "#152830"
        }
    }
    //跳转到各个界面，相当于路由
    function rightWdRouter(url,properties){
        rightWd.setSource(url,properties);
    }
}
