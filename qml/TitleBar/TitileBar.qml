import QtQuick 2.0
import QtQuick.Window 2.0
//标题部分
Rectangle{
    id: root
    color: "#17202C" //color: "#777777"
   /* gradient: Gradient {
        GradientStop { position: 0.0; color: "#17202C" }
        GradientStop { position: 0.5; color: "#777777" }
    }*/

    MouseArea {
        id: mouse
        anchors.fill: parent
        drag.target: parent.parent
        property point clickPos: "0,0"
        acceptedButtons: Qt.LeftButton //只处理鼠标左键
        onPressed: { //接收鼠标按下事件
            //console.log("titleBar Pressed!");
            clickPos  = Qt.point(mouse.x,mouse.y);
        }
        onDoubleClicked: {
            console.log("titleBar Double click!")
            if(mainWindow.visibility == Window.Windowed){
                mainWindow.visibility = Window.FullScreen;
            }
            else{
                mainWindow.visibility = Window.Windowed;
            }
        }
        onPositionChanged: {
            if(mainWindow.visibility == Window.Windowed) {
                var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                mainWindow.setX(mainWindow.x+delta.x)
                mainWindow.setY(mainWindow.y+delta.y)
            }
        }
    }

    Image {
        id: image_logo
        width: 50
        height: 50
        source: "qrc:/images/tinoya.png"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 10
        opacity: logoArea.containsMouse ? 0.5 : 1.0;
        MouseArea{
            id: logoArea;
            anchors.fill: parent;
            hoverEnabled: true;
            propagateComposedEvents: false
            acceptedButtons: Qt.LeftButton
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                console.log("Logo click!");
                rightWdRouter("qrc:/qml/RightWindow/Home.qml",{});
                leftBar.visible =false;
            }
        }
    }
    Column {
        id: titleText
        spacing: 5
        anchors.left: image_logo.right
        anchors.top: image_logo.top
        anchors.bottom: image_logo.bottom
        anchors.leftMargin: 20

        Text {
            id: logoCNname
            text: qsTr("天眼预警联动")
            font.family: "宋体"
            font.pointSize: 14
            font.weight: Font.DemiBold
            color: "#FFFFFF"

            opacity: cnNameArea.containsMouse ? 0.5 : 1.0;
            MouseArea{
                id: cnNameArea;
                anchors.fill: parent;
                hoverEnabled: true;
                propagateComposedEvents: false
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    console.log("LogoName click!");

                }
            }
        }
        Text {
            id: logoENname
            text: qsTr("Tinoya System")
            font.family: "Helvetica"
            font.pointSize: 14
            font.weight: Font.DemiBold
            color: "#EEEEEE"

            opacity: enNameArea.containsMouse ? 0.5 : 1.0;
            MouseArea{
                id: enNameArea;
                anchors.fill: parent;
                hoverEnabled: true;
                propagateComposedEvents: false
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    console.log("LogoName click!");

                }
            }
        }

    }

    Text {
        id: user
        text: qsTr("Admin")
        font.family: "Helvetica"
        font.pointSize: 14
        font.weight: Font.DemiBold
        color: "#EEEEEE"
        anchors.right: btnSet.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 30
        opacity: userArea.containsMouse ? 0.5 : 1.0
        MouseArea{
            id: userArea;
            anchors.fill: parent;
            hoverEnabled: true;
            propagateComposedEvents: false
            acceptedButtons: Qt.LeftButton
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                console.log("userName click!");

            }
        }
    }
    Image {
        id: btnSet
        source: "qrc:/images/btnSetting1.png"
        width: 35
        height: 35
        anchors.right: separateRect.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
        opacity: setArea.containsMouse ? 0.5 : 1.0
        MouseArea{
            id: setArea;
            anchors.fill: parent;
            hoverEnabled: true;
            propagateComposedEvents: false
            acceptedButtons: Qt.LeftButton
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                console.log("SettingImg click!");

            }
        }
    }

    //分隔条
    Rectangle{
        id: separateRect
        width: 1
        height: 35
        color: "#505050"
        anchors.right: btnWindow.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
    }

    //添加控制最大最小关闭按钮
    Row{
        id: btnWindow
        spacing: 16;
        anchors.verticalCenter: parent.verticalCenter;
        anchors.right: parent.right;
        anchors.rightMargin: 20;

        //最小化
        Image{
            id: btnMini;
            width: 40
            height: 40
            anchors.verticalCenter: parent.verticalCenter;
            source: "qrc:/images/btnMini1.png";
            opacity: miniArea.containsMouse ? 1.0 : 0.5;
            MouseArea{
                id: miniArea;
                anchors.fill: parent;
                hoverEnabled: true;
                propagateComposedEvents: false
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    //console.log("minimiun click!");
                    if(mainWindow == null)
                        return;
                    mainWindow.visibility = Window.Minimized;
                }
            }
        }

        //最大化
        Rectangle{
            width: 40;
            height: 40;
            color: "#17202C";
            Rectangle{
                id: btnMaximum;
                anchors.centerIn: parent;
                anchors.verticalCenter: parent.verticalCenter
                width: 25;
                height: 16;
                border.width: 2;
                border.color: maxiArea.containsMouse ? "#FFFFFF" : "#858585";
                color: "#17202C";
                radius: 2;
            }
            MouseArea{
                id: maxiArea
                anchors.fill: parent;
                hoverEnabled: true;
                acceptedButtons: Qt.LeftButton
                propagateComposedEvents: false
                cursorShape: Qt.PointingHandCursor
                onReleased: {
                    //console.log("maximun click!");
                    if(mainWindow == null)
                        return;
                    if(mainWindow.visibility == Window.FullScreen) {
                        mainWindow.showNormal();
                        //console.log("Clicked, to fullscreen")
                    }
                    else{
                        mainWindow.visibility = Window.FullScreen;
                        //console.log("Clicked, to normal window")
                    }
                }
            }

        }

        //关闭
        Image{
            id: btnClose;
            width: 40
            height: 40
            anchors.verticalCenter: parent.verticalCenter;
            source: "qrc:/images/btnClose1.png";
            opacity: closeArea.containsMouse ? 1.0 : 0.5;

            MouseArea{
                id: closeArea;
                anchors.fill: parent;
                acceptedButtons: Qt.LeftButton;
                hoverEnabled: true;
                propagateComposedEvents: false
                cursorShape: Qt.PointingHandCursor
                onReleased: {
                    //console.log("close click!");
                    if(mainWindow == null)
                        return;
                    mainWindow.close();
                }
            }
        }
    }
}
