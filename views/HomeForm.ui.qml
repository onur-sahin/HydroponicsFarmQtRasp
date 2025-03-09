import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item{
    id:root
    width:parent.width
    height:parent.height

    Rectangle{
        anchors.fill:parent
        // color:"lightblue"
        
    }

    property var radiusValue    : 5
    property var rectColor      : "#F2F2F2"
    property var rectBorderWidth: 2
    property var rectBorderColor: "black"

    ColumnLayout{
        anchors.centerIn:parent

        //! ROW 0
        RowLayout{
    
            
            GridLayout{
                rows:2
                columns:2


                Rectangle{
                    id:rect_basinA
                    Layout.preferredWidth:root.width*0.125
                    Layout.preferredHeight:root.height*0.1
                    Layout.column:0
                    Layout.row:0
                    Layout.rowSpan:1
                    Layout.columnSpan:1
                    radius: root.radiusValue
                    color:root.rectColor
                    border.width:root.rectBorderWidth
                    border.color:root.rectBorderColor
                    Text{
                        text:"A"
                        anchors.centerIn:parent
                    }

                    MouseArea{
                        id:ma_basinA
                        anchors.fill:parent
                    }

                }

                Rectangle{
                    id:rect_basinB
                    Layout.preferredWidth:root.width*0.125
                    Layout.preferredHeight:root.height*0.1
                    Layout.column:1
                    Layout.row:0
                    Layout.rowSpan:1
                    Layout.columnSpan:1
                    radius:root.radiusValue
                    color:root.rectColor
                    border.width:root.rectBorderWidth
                    border.color:root.rectBorderColor
                    Text{
                        text:qsTr("B")
                        anchors.centerIn:parent
                    }
                    MouseArea{
                        id:ma_basinB
                        anchors.fill:parent
                    }
                  
                }

                Rectangle{ 
                    Layout.preferredHeight:root.height*0.1
                    Layout.column:0
                    Layout.row:1
                    Layout.rowSpan:1
                    Layout.columnSpan:2
                    Layout.alignment:Qt.AlignHCenter
                    Text{
                        anchors.centerIn:parent
                        text:qsTr("Fertiliezer")
                }

                }
                
            }


            Rectangle{
                Layout.preferredWidth:root.width*0.125
                Layout.preferredHeight:root.height*0.1
                radius:root.radiusValue
                color:root.rectColor
                border.width:root.rectBorderWidth
                border.color:root.rectBorderColor
                Text{
                    text:qsTr("")
                    anchors.centerIn:parent
                }
                MouseArea{
                    id:ma_ph
                    anchors.fill:parent
                }
            }

            Rectangle{
                Layout.preferredWidth:root.width*0.125
                Layout.preferredHeight:root.height*0.1
                radius:root.radiusValue
                color:root.rectColor
                border.width:root.rectBorderWidth
                border.color:root.rectBorderColor
            }

            Rectangle{
                Layout.preferredWidth:root.width*0.125
                Layout.preferredHeight:root.height*0.1
                radius:root.radiusValue
                color:root.rectColor
                border.width:root.rectBorderWidth
                border.color:root.rectBorderColor
            }

            Rectangle{
                Layout.preferredWidth:root.width*0.125
                Layout.preferredHeight:root.height*0.1
                radius:root.radiusValue
                color:root.rectColor
                border.width:root.rectBorderWidth
                border.color:root.rectBorderColor
            }

        }

    }


}