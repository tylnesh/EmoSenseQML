import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import com.tylnesh.backend 1.0

ApplicationWindow {


    property string buttonsPath
    property string sensorsPath
    property string affectivaIP
    property string subjectName
    property int subjectAge
    property string picturesPath
    property string videosPath

    visible: true
    width: 1920
    height: 1080
    color: "black"
    title: qsTr("EmoSense QML Edition - Pictures Slideshow")





    MouseArea {
        anchors.fill: parent
        onClicked: console.log(affectivaIP)
    }



}
