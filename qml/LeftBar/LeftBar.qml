import QtQuick 2.0
import QtQuick 2.7
import QtQuick.Controls 2.3//ComboBox
import QtQuick.Controls 2.3//ScrollView
Rectangle {
    id: root
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    color: "#202020"
    ScrollView {
        id: scrollView
        clip:true
        width: parent.width
        height: parent.height
        anchors.left: parent.left
        anchors.top: parent.top
        ScrollBar.vertical.interactive: true
        Column {
            id: leftColumn
            //园区监控中心
            Image {
                id: jkzxLB
                source: "qrc:/images/leftbar/jiankong.bmp"
                state: "fold"
                states: [
                    State {
                        name: "unfold"
                        PropertyChanges {target: jkzxRect; visible:true}
                    },
                    State {
                        name: "fold"
                        PropertyChanges { target: jkzxRect; visible:false }
                    }
                ]
                MouseArea {
                    id: jkzxLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(jkzxLB.state =="fold")
                            jkzxLB.state = "unfold"
                        else if(jkzxLB.state == "unfold")
                            jkzxLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: jkzxRect
                width: parent.width
                height: 140
                visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }
                Column {
                    width: parent.width
                    spacing: 2

                    Text {
                        id: parkManagerment1
                        text: qsTr("园区管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了园区管理")
                                parent.color = "white"
                                parkManagerment2.color = "gray"
                                parkManagerment3.color= "gray"
                                parkManagerment4.color = "gray"
                                parkManagerment5.color= "gray"
                                parkManagerment6.color = "gray"
                                parkManagerment7.color= "gray"
                            }
                        }
                    }
                    Text {
                        id: parkManagerment2
                        text: qsTr("智能决策")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了智能决策")
                                parent.color = "white"
                                parkManagerment1.color = "gray"
                                parkManagerment3.color= "gray"
                                parkManagerment4.color = "gray"
                                parkManagerment5.color= "gray"
                                parkManagerment6.color = "gray"
                                parkManagerment7.color= "gray"
                            }
                        }
                    }
                    Text {
                        id: parkManagerment3
                        text: qsTr("运维管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了运维管理")
                                parent.color = "white"
                                parkManagerment2.color = "gray"
                                parkManagerment1.color= "gray"
                                parkManagerment4.color = "gray"
                                parkManagerment5.color= "gray"
                                parkManagerment6.color = "gray"
                                parkManagerment7.color= "gray"
                            }
                        }
                    }
                    Text {
                        id: parkManagerment4
                        text: qsTr("数据统计")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了数据统计")
                                parent.color = "white"
                                parkManagerment2.color = "gray"
                                parkManagerment3.color= "gray"
                                parkManagerment1.color = "gray"
                                parkManagerment5.color= "gray"
                                parkManagerment6.color = "gray"
                                parkManagerment7.color= "gray"
                            }
                        }
                    }
                    Text {
                        id: parkManagerment5
                        text: qsTr("设备管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了设备管理")
                                parent.color = "white"
                                parkManagerment2.color = "gray"
                                parkManagerment3.color= "gray"
                                parkManagerment4.color = "gray"
                                parkManagerment1.color= "gray"
                                parkManagerment6.color = "gray"
                                parkManagerment7.color= "gray"
                            }
                        }
                    }
                    Text {
                        id: parkManagerment6
                        text: qsTr("系统管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了系统管理")
                                parent.color = "white"
                                parkManagerment2.color = "gray"
                                parkManagerment3.color= "gray"
                                parkManagerment4.color = "gray"
                                parkManagerment5.color= "gray"
                                parkManagerment1.color = "gray"
                                parkManagerment7.color= "gray"
                            }
                        }
                    }
                    Text {
                        id: parkManagerment7
                        text: qsTr("人员管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了人员管理")
                                parent.color = "white"
                                parkManagerment2.color = "gray"
                                parkManagerment3.color= "gray"
                                parkManagerment4.color = "gray"
                                parkManagerment5.color= "gray"
                                parkManagerment6.color = "gray"
                                parkManagerment1.color= "gray"
                            }
                        }
                    }
                }
            }
            //停车位管理
            Image {
                id: carparkLB
                source: "qrc:/images/leftbar/carStop.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: carparkLRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: carparkLRect; visible:false }}
                ]
                MouseArea {
                    id: carparkLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(carparkLB.state =="fold")
                            carparkLB.state = "unfold"
                        else if(carparkLB.state == "unfold")
                            carparkLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: carparkLRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
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
                                rightWdRouter("qrc:/qml/Carpark/CarparkCenter.qml",{});
                                parent.color = "white"
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
                                rightWdRouter("qrc:/qml/Carpark/CarparkState.qml",{});
                                parent.color = "white"
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
                                carparkL2.color = carparkL3.color = carparkL4.color = carparkL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //视频监控
            Image {
                id: cameraLB
                source: "qrc:/images/leftbar/Camera.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: cameraLBRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: cameraLBRect; visible:false }}
                ]
                MouseArea {
                    id: cameraLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(cameraLB.state =="fold")
                            cameraLB.state = "unfold"
                        else if(cameraLB.state == "unfold")
                            cameraLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: cameraLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: cameraL1
                        text: qsTr("控制面板")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了控制面板")
                                parent.color = "white"
                                cameraL2.color = cameraL3.color = cameraL4.color = cameraL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: cameraL2
                        text: qsTr("视频管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了camera视频管理")
                                parent.color = "white"
                                cameraL1.color = cameraL3.color = cameraL4.color = cameraL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: cameraL3
                        text: qsTr("报警检测")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了camera报警检测")
                                parent.color = "white"
                                cameraL2.color = cameraL1.color = cameraL4.color = cameraL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: cameraL4
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了camera配置管理")
                                parent.color = "white"
                                cameraL2.color = cameraL3.color = cameraL1.color = cameraL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: cameraL5
                        text: qsTr("日志搜索")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了camera日志搜索")
                                parent.color = "white"
                                cameraL2.color = cameraL3.color = cameraL4.color = cameraL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //路灯管理
            Image {
                id: lightLB
                source: "qrc:/images/leftbar/LedJieNeng.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: lightLBRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: lightLBRect; visible:false }}
                ]
                MouseArea {
                    id: lightLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(lightLB.state =="fold")
                            lightLB.state = "unfold"
                        else if(lightLB.state == "unfold")
                            lightLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: lightLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: lightL1
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
                                lightL2.color = lightL3.color = lightL4.color = lightL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: lightL2
                        text: qsTr("控制管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了light控制管理")
                                parent.color = "white"
                                lightL1.color = lightL3.color = lightL4.color = lightL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: lightL3
                        text: qsTr("报警检测")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了light报警检测")
                                parent.color = "white"
                                lightL2.color = lightL1.color = lightL4.color = lightL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: lightL4
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了light配置管理")
                                parent.color = "white"
                                lightL2.color = lightL3.color = lightL1.color = lightL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: lightL5
                        text: qsTr("智慧统计")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了light智慧统计")
                                parent.color = "white"
                                lightL2.color = lightL3.color = lightL4.color = lightL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //警力巡查
            Image {
                id: policeLB
                source: "qrc:/images/leftbar/JinliXunCha.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: policeLBRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: policeLBRect; visible:false }}
                ]
                MouseArea {
                    id: policeLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(policeLB.state =="fold")
                            policeLB.state = "unfold"
                        else if(policeLB.state == "unfold")
                            policeLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: policeLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: policeL1
                        text: qsTr("基本信息")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了警力巡查基本信息")
                                parent.color = "white"
                                policeL2.color = policeL3.color = policeL4.color = policeL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: policeL2
                        text: qsTr("巡更管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了police巡更管理")
                                parent.color = "white"
                                policeL1.color = policeL3.color = policeL4.color = policeL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: policeL3
                        text: qsTr("警情管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了police警情管理")
                                parent.color = "white"
                                policeL2.color = policeL1.color = policeL4.color = policeL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: policeL4
                        text: qsTr("系统配置")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了polic系统配置")
                                parent.color = "white"
                                policeL2.color = policeL3.color = policeL1.color = policeL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: policeL5
                        text: qsTr("人员管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了police人员管理")
                                parent.color = "white"
                                policeL2.color = policeL3.color = policeL4.color = policeL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //WIFI广告
            Image {
                id: wifiLB
                source: "qrc:/images/leftbar/WifiGG.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: wifiLBRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: wifiLBRect; visible:false }}
                ]
                MouseArea {
                    id: wifiLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(wifiLB.state =="fold")
                            wifiLB.state = "unfold"
                        else if(wifiLB.state == "unfold")
                            wifiLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: wifiLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: wifiL1
                        text: qsTr("控制主页")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了控制主页")
                                parent.color = "white"
                                wifiL2.color = wifiL3.color = wifiL4.color = wifiL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: wifiL2
                        text: qsTr("信息发布")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了wifi信息发布")
                                parent.color = "white"
                                wifiL1.color = wifiL3.color = wifiL4.color = wifiL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: wifiL3
                        text: qsTr("内容管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了wifi内容管理")
                                parent.color = "white"
                                wifiL2.color = wifiL1.color = wifiL4.color = wifiL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: wifiL4
                        text: qsTr("粉丝管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了wifi粉丝管理")
                                parent.color = "white"
                                wifiL2.color = wifiL3.color = wifiL1.color = wifiL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: wifiL5
                        text: qsTr("评论管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了wifi评论管理")
                                parent.color = "white"
                                wifiL2.color = wifiL3.color = wifiL4.color = wifiL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //危险品监控
            Image {
                    id: securityLB
                    source: "qrc:/images/leftbar/LiangDong.bmp"
                    state: "fold"
                    states: [
                        State {name: "unfold"; PropertyChanges {target: securityLBRect; visible:true}},
                        State {name: "fold"; PropertyChanges { target: securityLBRect; visible:false }}
                    ]
                    MouseArea {
                        id: securityLBArea
                        cursorShape: "PointingHandCursor"
                        anchors.fill: parent
                        onClicked: {
                            if(securityLB.state =="fold")
                                securityLB.state = "unfold"
                            else if(securityLB.state == "unfold")
                                securityLB.state = "fold"
                            console.log("current state:" +  parent.state)
                        }
                    }
                }
            Rectangle{
                id: securityLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: securityL1
                        text: qsTr("基本信息")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了危险品基本信息")
                                parent.color = "white"
                                securityL2.color = securityL3.color = securityL4.color = securityL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: securityL2
                        text: qsTr("仓库管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了security仓库管理")
                                parent.color = "white"
                                securityL1.color = securityL3.color = securityL4.color = securityL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: securityL3
                        text: qsTr("报警检测")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了security报警检测")
                                parent.color = "white"
                                securityL2.color = securityL1.color = securityL4.color = securityL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: securityL4
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了security配置管理")
                                parent.color = "white"
                                securityL2.color = securityL3.color = securityL1.color = securityL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: securityL5
                        text: qsTr("维保管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了security维保管理")
                                parent.color = "white"
                                securityL2.color = securityL3.color = securityL4.color = securityL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //滑坡监控
            Image {
                id: slideLB
                source: "qrc:/images/leftbar/HuaPoJK.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: slideLBRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: slideLBRect; visible:false }}
                ]
                MouseArea {
                    id: slideLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(slideLB.state =="fold")
                            slideLB.state = "unfold"
                        else if(slideLB.state == "unfold")
                            slideLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: slideLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: slideL1
                        text: qsTr("基本信息")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了滑坡基本信息")
                                parent.color = "white"
                                slideL2.color = slideL3.color = slideL4.color = slideL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: slideL2
                        text: qsTr("地图视窗")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了slide地图视窗")
                                parent.color = "white"
                                slideL1.color = slideL3.color = slideL4.color = slideL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: slideL3
                        text: qsTr("报警监测")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了slide报警监测")
                                parent.color = "white"
                                slideL2.color = slideL1.color = slideL4.color = slideL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: slideL4
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了slide配置管理")
                                parent.color = "white"
                                slideL2.color = slideL3.color = slideL1.color = slideL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: slideL5
                        text: qsTr("应急管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了slide应急管理")
                                parent.color = "white"
                                slideL2.color = slideL3.color = slideL4.color = slideL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //内涝监控
            Image {
                    id: floodLB
                    source: "qrc:/images/leftbar/NeiLaoJK.bmp"
                    state: "fold"
                    states: [
                        State {name: "unfold"; PropertyChanges {target: floodLBRect; visible:true}},
                        State {name: "fold"; PropertyChanges { target: floodLBRect; visible:false }}
                    ]
                    MouseArea {
                        id: floodLBArea
                        cursorShape: "PointingHandCursor"
                        anchors.fill: parent
                        onClicked: {
                            if(floodLB.state =="fold")
                                floodLB.state = "unfold"
                            else if(floodLB.state == "unfold")
                                floodLB.state = "fold"
                            console.log("current state:" +  parent.state)
                        }
                    }
                }
            Rectangle{
                id: floodLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: floodL1
                        text: qsTr("基本信息")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了内涝基本信息")
                                parent.color = "white"
                                floodL2.color = floodL3.color = floodL4.color = floodL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: floodL2
                        text: qsTr("地图视窗")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了flood地图视窗")
                                parent.color = "white"
                                floodL1.color = floodL3.color = floodL4.color = floodL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: floodL3
                        text: qsTr("报警监测")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了flood报警监测")
                                parent.color = "white"
                                floodL2.color = floodL1.color = floodL4.color = floodL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: floodL4
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了flood配置管理")
                                parent.color = "white"
                                floodL2.color = floodL3.color = floodL1.color = floodL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: floodL5
                        text: qsTr("应急管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了flood应急管理")
                                parent.color = "white"
                                floodL2.color = floodL3.color = floodL4.color = floodL1.color ="gray"
                            }
                        }
                    }
                }
            }
            //联动报警
            Image {
                    id: dangerLB
                    source: "qrc:/images/leftbar/danger.bmp"
                    state: "fold"
                    states: [
                        State {name: "unfold"; PropertyChanges {target: dangerLBRect; visible:true}},
                        State {name: "fold"; PropertyChanges { target: dangerLBRect; visible:false }}
                    ]
                    MouseArea {
                        id: dangerLBArea
                        cursorShape: "PointingHandCursor"
                        anchors.fill: parent
                        onClicked: {
                            if(dangerLB.state =="fold")
                                dangerLB.state = "unfold"
                            else if(dangerLB.state == "unfold")
                                dangerLB.state = "fold"
                            console.log("current state:" +  parent.state)
                        }
                    }
                }
            Rectangle{
                id: dangerLBRect
                width: parent.width
                height: 80
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: dangerL1
                        text: qsTr("基本信息")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了联动报警基本信息")
                                parent.color = "white"
                                dangerL2.color = dangerL3.color = dangerL4.color = "gray"
                            }
                        }
                    }
                    Text {
                        id: dangerL2
                        text: qsTr("联动信息")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了danger联动信息")
                                parent.color = "white"
                                dangerL1.color = dangerL3.color = dangerL4.color = "gray"
                            }
                        }
                    }
                    Text {
                        id: dangerL3
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了danger配置管理")
                                parent.color = "white"
                                dangerL2.color = dangerL1.color = dangerL4.color = "gray"
                            }
                        }
                    }
                    Text {
                        id: dangerL4
                        text: qsTr("维护管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了danger维护管理")
                                parent.color = "white"
                                dangerL2.color = dangerL3.color = dangerL1.color = "gray"
                            }
                        }
                    }
                }
            }
            //机电管理
            Image {
                id: motoLB
                source: "qrc:/images/leftbar/JiDianJK.bmp"
                state: "fold"
                states: [
                    State {name: "unfold"; PropertyChanges {target: motoLBRect; visible:true}},
                    State {name: "fold"; PropertyChanges { target: motoLBRect; visible:false }}
                ]
                MouseArea {
                    id: motoLBArea
                    cursorShape: "PointingHandCursor"
                    anchors.fill: parent
                    onClicked: {
                        if(motoLB.state =="fold")
                            motoLB.state = "unfold"
                        else if(motoLB.state == "unfold")
                            motoLB.state = "fold"
                        console.log("current state:" +  parent.state)
                    }
                }
            }
            Rectangle{
                id: motoLBRect
                width: parent.width
                height: 100
                //visible: true
                color: root.color
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.OpenHandCursor
                    onClicked: console.log("listRect clicked!")
                }

                Column {
                    width: parent.width
                    spacing: 2
                    Text {
                        id: motoL1
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
                                motoL2.color = motoL3.color = motoL4.color = motoL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: motoL2
                        text: qsTr("图状列表")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了moto图状列表")
                                parent.color = "white"
                                motoL1.color = motoL3.color = motoL4.color = motoL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: motoL3
                        text: qsTr("报警检测")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了moto报警检测")
                                parent.color = "white"
                                motoL2.color = motoL1.color = motoL4.color = motoL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: motoL4
                        text: qsTr("配置管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了moto配置管理")
                                parent.color = "white"
                                motoL2.color = motoL3.color = motoL1.color = motoL5.color ="gray"
                            }
                        }
                    }
                    Text {
                        id: motoL5
                        text: qsTr("维保管理")
                        font.pixelSize: 18
                        color: "gray"
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        MouseArea{
                            anchors.fill: parent
                            cursorShape: "PointingHandCursor"
                            onClicked: {
                                console.log("点击了moto维保管理")
                                parent.color = "white"
                                motoL2.color = motoL3.color = motoL4.color = motoL1.color ="gray"
                            }
                        }
                    }
                }
            }
        }
//            Image {
//                id: wifiLB
//                source: "qrc:/images/leftbar/WifiGG.bmp"
//            }
//            Image {
//                id: slideLB
//                source: "qrc:/images/leftbar/HuaPoJK.bmp"
//            }
//            Image {
//                id: dangerLB
//                source: "qrc:/images/leftbar/danger.bmp"
//            }
//            Image {
//                id: motoLB
//                source: "qrc:/images/leftbar/JiDianJK.bmp"
//            }
//            Image {
//                id: securityLB
//                source: "qrc:/images/leftbar/LiangDong.bmp"
//            }
//            Image {
//                id: floodLB
//                source: "qrc:/images/leftbar/NeiLaoJK.bmp"
//            }

    }
}
