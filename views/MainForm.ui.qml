import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

ApplicationWindow {

    id:appWindow
    visible: true
    width: 800*0.7
    height: 480*0.7
    title: qsTr("Hyroponics Farming Control System")
    font.family:"Arial"
    font.pointSize:12

    property alias ma_graph             : ma_graph
    property alias ma_home              : ma_home
    property alias ma_calibration       : ma_calibration
    property alias ma_settings          : ma_settings
    property alias ma_test              : ma_test

    property alias sl_main              : sl_main
    property alias page_home            : page_home
    property alias page_settings        : page_settings
    property alias page_graph           : page_graph
    property alias page_calibration     : page_calibration
    property alias page_test            : page_test

    Material.theme:Material.Light
   

    Item{
        id:itm_buttons
        width:parent.width*0.1
        height:parent.height
        anchors.left:parent.left
        anchors.verticalCenter:parent.verticalCenter
        ColumnLayout{
            id:cl_buttons
            anchors.fill:parent
            Label{
                id:lb_graph
                Layout.alignment:Qt.AlignHCenter
                text:"📈"
                font.pointSize:appWindow.width*0.05
                z:2
                MouseArea{
                    id:ma_graph
                    anchors.fill:parent
                }
            }
            Label{
                id:lb_fans
                Layout.alignment:Qt.AlignHCenter
                text:"📈"
                font.pointSize:appWindow.width*0.05
                z:2
                MouseArea{
                    id:ma_fans
                    anchors.fill:parent
                }
            }
           
            Label{
                id:lb_homeImage
                Layout.alignment:Qt.AlignHCenter
                text:"🏠"
                font.pointSize:appWindow.width*0.05
                z:2
                MouseArea{
                    id:ma_home
                    anchors.fill:parent
                }
            }
            Label{
                id:lb_calibration
                Layout.alignment:Qt.AlignHCenter
                text:"🎛️"
                font.pointSize:appWindow.width*0.05
                z:2
                MouseArea{
                    id:ma_calibration
                    anchors.fill:parent
                }
            }
            Label{
                id:lb_test
                Layout.alignment:Qt.AlignHCenter
                text:"🧪"
                font.pointSize:appWindow.width*0.05
                z:2
                MouseArea{
                    id:ma_test
                    anchors.fill:parent
                }
            }
            Label{
                id:lb_settings
                Layout.alignment:Qt.AlignHCenter
                text:"⚙️"
                font.pointSize:appWindow.width*0.05*1.2
                z:2
                MouseArea{
                    id:ma_settings
                    anchors.fill:parent
                }
            }

        }

    }


    StackLayout{
        id: sl_main
        width:parent.width*0.90
        height:parent.height
        anchors.left:itm_buttons.right
        anchors.top:parent.top
        currentIndex:1
        z:1

        Graph{
            id:page_graph
            property string pageName: qsTr("GRAPHS")
        }
        Home{
            id:page_home
            property string pageName: qsTr("HOME")
        }
        Settings{
            id:page_settings
            property string pageName: qsTr("SETTINGS")
        }
        Calibration{
            id:page_calibration
            property string pageName: qsTr("CALIBRATION")
        }

        Test{
            id:page_test
            property string pageName: qsTr("TEST")
        }




    }

    Item{
        id:itm_top_display
        width:parent.width*0.8
        height:parent.height*0.05
        anchors.top:parent.top
        anchors.horizontalCenter:parent.horizontalCenter
        z:5
        Rectangle{
            anchors.fill:parent
            color:"lightGrey"
            radius:5
        }
        RowLayout{
            id:rl_top_display
            anchors.fill:parent

            Label{
                id:lb_clock_disp
                Layout.alignment: Qt.AlignLeft
                text:"hh:mm"
            }

            Label{
                id:lb_pageName
                Layout.alignment: Qt.AlignCenter
                text: sl_main.children[ sl_main.currentIndex ].pageName
            }
            Label{
                id:lb_date_disp
                Layout.alignment: Qt.AlignRight
                text:"dd/mm-yyyy"
            }
        }
    }
    


    // ListView {
    //     anchors.fill: parent
    //     model: itemModel
    //     delegate: Item {
    //         width: parent.width
    //         height: 50
    //         Text {
    //             anchors.centerIn: parent
    //             text: modelData
    //         }
    //     }
    // }

  
}
