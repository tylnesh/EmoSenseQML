import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("EmoSense QML Edition")

    Column {
    id: inputColumn
    width: parent / 3
    x: 100
    Text {
        id: inputsText
        text: qsTr("Inputs")
        }
    }

    Column {
    id: infoColumn
    width: parent / 3
    x: inputColumn.x + width + 100
    Text {
        id: infoText
        text: qsTr("Info")
        }
    }

    Column {
    id: displayColumn
    width: parent / 3
    x: displayColumn.x + width + 100
    Text {
        id: displayText
        text: qsTr("Display")
        }
    }
}
