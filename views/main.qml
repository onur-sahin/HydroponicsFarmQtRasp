import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Model-View Example"

    ListView {
        anchors.fill: parent
        model: itemModel

        delegate: Item {
            width: parent.width
            height: 50
            Text {
                anchors.centerIn: parent
                text: modelData
            }
        }
    }
}