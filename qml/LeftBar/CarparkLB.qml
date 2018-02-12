import QtQuick 2.7

Column {
    property bool isSlected: false;                 //按钮是否已点击
    property string idName;
    property int index

    id: root
    spacing: 2
    Image {
        id: idName
        source: "qrc:/images/leftbar/JiDianJK.bmp"
        height: 50
        width: 250
        state: "unfold"
        states: [
            State {name: "unfold"; PropertyChanges {target: mylistRect; visible:true}},
            State {name: "fold"; PropertyChanges { target: mylistRect; visible:false }}
        ]
        MouseArea {
            id: itemArea
            cursorShape: "PointingHandCursor"
            anchors.fill: parent
            onClicked: {
                if(idName.state =="fold")
                    idName.state = "unfold"
                else if(idName.state == "unfold")
                    idName.state = "fold"
                console.log("current state:" +  parent.state + ", widthsize = "+ root.width +", widthsize = "+ root.height)
            }
        }
    }
    Rectangle{
        id: mylistRect
        width: parent.width
        visible: true
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.OpenHandCursor
            onClicked: console.log("mylistRect clicked!")
        }

        Column {
            width: parent.width
            spacing: 2
            Text {
                id: carparkL1
                text: qsTr("基本信息")
                font.pixelSize: 18
                color: "gray"
                anchors.right: parent.right
                anchors.rightMargin: 10
                MouseArea{
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: {
                        console.log("点击了carpark基本信息")
                        parent.color = "white"
                        index = 1
                        carparkL2.color = carparkL3.color = carparkL4.color = carparkL5.color ="gray"
                    }
                }
            }
            Text {
                id: carparkL2
                text: qsTr("图状列表")
                font.pixelSize: 18
                color: "gray"
                anchors.right: parent.right
                anchors.rightMargin: 10
                MouseArea{
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: {
                        console.log("点击了carpark图状列表")
                        parent.color = "white"
                        index = 2
                        carparkL1.color = carparkL3.color = carparkL4.color = carparkL5.color ="gray"
                    }
                }
            }
            Text {
                id: carparkL3
                text: qsTr("报警检测")
                font.pixelSize: 18
                color: "gray"
                anchors.right: parent.right
                anchors.rightMargin: 10
                MouseArea{
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: {
                        console.log("点击了carpark报警检测")
                        parent.color = "white"
                        index = 3
                        carparkL2.color = carparkL1.color = carparkL4.color = carparkL5.color ="gray"
                    }
                }
            }
            Text {
                id: carparkL4
                text: qsTr("配置管理")
                font.pixelSize: 18
                color: "gray"
                anchors.right: parent.right
                anchors.rightMargin: 10
                MouseArea{
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: {
                        console.log("点击了carpark配置管理")
                        parent.color = "white"
                        index = 4
                        carparkL2.color = carparkL3.color = carparkL1.color = carparkL5.color ="gray"
                    }
                }
            }
            Text {
                id: carparkL5
                text: qsTr("计费管理")
                font.pixelSize: 18
                color: "gray"
                anchors.right: parent.right
                anchors.rightMargin: 10
                MouseArea{
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: {
                        console.log("点击了carpark计费管理")
                        parent.color = "white"
                        index = 5
                        carparkL2.color = carparkL3.color = carparkL4.color = carparkL1.color ="gray"
                    }
                }
            }
        }
    }
}
