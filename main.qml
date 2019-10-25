import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtMultimedia 5.9
import Qt.labs.platform 1.0
import Qt.labs.folderlistmodel 2.2
import com.tylnesh.backend 1.0

ApplicationWindow {
    id: root
    visible: true
    width: 1920
    height: 1080
    minimumWidth: 1100
    title: qsTr("EmoSense QML Edition")



    property int i: 0

    Playlist {
        id: videoPlaylist
    }

    Loader {
        id: pageLoader
    }

    BackEnd {
        id: backend
    }

    Component.onCompleted: {

        console.log(backend.availablePorts())

    }

    Rectangle {
        id: titleRectangle
        anchors.top: parent.top
        width: parent.width
        height: 200
        color: "#aaaaaa"

        Text {
            x: 450
            y: 24
            text: "EmoSense QML Edition"
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.family: "Helvetica"
            font.pointSize: 72
            color: "black"
        }
    }
    Rectangle {
        id: inputRectangle
        anchors.left: parent.left
        anchors.top: titleRectangle.bottom
        width: parent.width / 3
        height: parent.height - titleRectangle.height - bottomRectangle.height
        color: "#eeeeee"

        Text {
            id: inputHeader
            text: "Select inputs:"
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "Helvetica"
            font.pointSize: 32
            color: "black"
        }

        Text {
            id: arduinoButtonsLabel
            text: "Buttons Path:"
            anchors.top: inputHeader.bottom
            font.family: "Helvetica"
            font.pointSize: 24
            color: "black"
        }

        ComboBox {
            id: arduinoButtonsPath
            anchors.top: inputHeader.bottom
            anchors.left: arduinoButtonsLabel.right
            anchors.leftMargin: 20
            model : backend.availablePorts()
            onAccepted: {
                 console.log(currentText)
            }
        }



        Text {
            id: arduinoSensorsLabel
            text: "Sensors Path:"
            anchors.top: arduinoButtonsLabel.bottom
            font.family: "Helvetica"
            font.pointSize: 24
            color: "black"
        }

        ComboBox {
            id: arduinoSensorsPath
            anchors.top: arduinoButtonsLabel.bottom
            anchors.left: arduinoSensorsLabel.right
            anchors.leftMargin: 20
            model : backend.availablePorts()
            onAccepted: {
                console.log(currentText)
            }
        }

        Text {
            id: affectivaLabel
            text: "Affectiva IP:"
            anchors.top: arduinoSensorsLabel.bottom
            font.family: "Helvetica"
            font.pointSize: 24
            color: "black"
        }

        TextField {
            id: affectivaIP
            anchors.top: arduinoSensorsLabel.bottom
            anchors.left: affectivaLabel.right
            anchors.leftMargin: 20
            text: backend.affectivaIP
            placeholderText: qsTr("Affectiva IP")
        }
    }

    Rectangle {
        id: infoRectangle
        anchors.left: inputRectangle.right
        anchors.top: titleRectangle.bottom
        width: parent.width / 3
        height: parent.height - titleRectangle.height - bottomRectangle.height
        Layout.minimumWidth: infoHeader.width
        color: "#fefefe"


        ColumnLayout {
            id: infoRowLayout
            anchors.fill: infoRectangle
            spacing: 1
            //anchors.top: infoHeader.bottom

        Text {
            id: infoHeader
            text: "Enter information about subject:"
            wrapMode: Text.WrapAnywhere
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "Helvetica"
            font.pointSize: 32
            color: "black"
        }





                Text {
                    id: subjectIDLabel
                    text: "Name:"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "black"
                }

                TextField {
                    id: subjectID
                    //anchors.leftMargin: 20
                    text: backend.subjectName
                    placeholderText: qsTr("Subject name")
                    //onTextChanged: backend.subjectName = subjectName.text
                    //onTextEdited: backend.subjectName = text
                }




            Text {
                id: ageLabel
                text: "Age:"
                //anchors.top: subjectNameLabel.bottom
                font.family: "Helvetica"
                font.pointSize: 24
                color: "black"
            }

            TextField {
                id: subjectAge

                text: backend.subjectAge
                placeholderText: qsTr("Age")
                //onTextChanged: backend.subjectAge = parseInt(subjectAge.text)
            }

            Text {
                id: sexLabel
                text: "Sex:"
                //anchors.top: subjectNameLabel.bottom
                font.family: "Helvetica"
                font.pointSize: 24
                color: "black"
            }

            ComboBox {
                id: sexCombo
                model: ListModel {
                    id: cbItems
                    ListElement { text: "Male"; color: "Blue" }
                    ListElement { text: "Female"; color: "Red" }
                    ListElement { text: "Other"; color: "White" }
                }

        }
        }
    }

    Rectangle {
        id: displayRectangle
        anchors.left: infoRectangle.right
        anchors.top: titleRectangle.bottom
        width: parent.width / 3
        height: parent.height - titleRectangle.height - bottomRectangle.height
        color: "#eeeeee"

        Rectangle {
            id: picturesChooserRectangle
            anchors.top: displayRectangle.top
            width: parent.width
            height: parent.height / 2
            color: "lightblue"
            Text {
                id: picturesChooserLabel
                text: "Select Pictures Folder"
                anchors.centerIn: parent
                font.family: "Helvetica"
                font.pointSize: 24
                color: "black"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: picturesFolderDialog.open()
            }

            FolderDialog {
                id: picturesFolderDialog
                title: "Select Pictures Folder"
                folder: StandardPaths.standardLocations(
                            StandardPaths.PicturesLocation)[0]
                onAccepted: {
                    console.log("You chose: " + picturesFolderDialog.folder)
                    backend.isPicturesSelected = true
                }
                onRejected: {
                    console.log("Canceled")
                }
            }
        }

        Rectangle {
            id: videosChooserRectangle
            anchors.top: picturesChooserRectangle.bottom
            width: parent.width
            height: parent.height / 2
            color: "lightgreen"
            Text {
                id: videosChooserLabel
                text: "Select Videos Folder"
                anchors.centerIn: parent
                font.family: "Helvetica"
                font.pointSize: 24
                color: "black"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: videosFolderDialog.open()
            }

            FolderDialog {
                id: videosFolderDialog
                folder: StandardPaths.standardLocations(
                            StandardPaths.MoviesLocation)[0]
                title: "Select Videos Folder"
                onAccepted: {
                    console.log("You chose: " + videosFolderDialog.folder)
                    backend.isVideosSelected = true
                }
                onRejected: {
                    console.log("Canceled")
                }
            }
        }
    }

    Rectangle {
        id: bottomRectangle
        anchors.bottom: parent.bottom
        width: parent.width
        height: 200
        color: "#aaaaaa"

        Rectangle {
            id: cancelButton
            width: 300
            height: 200
            color: "red"
            anchors.left: parent.left

            MouseArea {
                anchors.fill: parent
                onClicked: Qt.quit()
            }
        }

        Rectangle {
            id: startButton
            width: 300
            height: 200
            color: "green"
            anchors.right: parent.right

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    backend.arduinoButtonsPath = arduinoButtonsPath.currentText
                    backend.arduinoSensorsPath = arduinoSensorsPath.currentText
                    backend.affectivaIP = affectivaIP.text

                    backend.connectAll()

                    backend.subjectName = subjectID.text
                    backend.subjectAge = subjectAge.text

                    if (picturesFolderDialog.folder !== StandardPaths.PicturesLocation) {
                        backend.picturesFolderPath = picturesFolderDialog.folder
                    } else
                        backend.picturesFolderPath = ""

                    if (videosFolderDialog.folder !== StandardPaths.MoviesLocation) {
                        backend.videosFolderPath = videosFolderDialog.folder
                    } else
                        backend.videosFolderPath = ""

                    if (backend.isPicturesSelected) {
                        slideshow.visible = true
                        slideshow.visibility = "FullScreen"
                        slideshowTimer.running = true
                        console.log(backend.availablePorts())
                    }

                    if (backend.isVideosSelected) {
                        slideshow.visible = true
                        slideshow.visibility = "FullScreen"
                        for (var i = 0; i < videosModel.rowCount(); i++) {
                            console.log(videosModel.get(i, "fileURL"))
                            videoPlaylist.addItem(videosModel.get(i, "fileURL"))
                        }
                        videoPlayer.play()


                    }
                }
            }
        }
    }

    Window {
        id: slideshow
        width: 1920
        height: 1080
        color: "black"

        FolderListModel {
            id: picturesModel
            nameFilters: ["*.png", "*.jpg"]
            folder: picturesFolderDialog.folder
        }

        FolderListModel {
            id: videosModel
            nameFilters: ["*.avi", "*.mp4", "*.mkv"]
            folder: videosFolderDialog.folder
        }

        Image {
            id: currentImage
            source: ""
            anchors.fill: parent
        }

        Timer {
            id: slideshowTimer
            interval: 5000
            repeat: true
            onTriggered: {
                currentImage.source = picturesModel.get(i, "fileURL")
                if (++i == picturesModel.count) {
                    i = 0
                    running = false
                    slideshow.close()
                }
            }
        }

        Video {
            id: videoPlayer
            width: 1920
            height: 1080
            playlist: videoPlaylist

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    videoPlayer.playlist.next()
                    }
            }

            focus: true
            Keys.onEscapePressed: {
                videoPlayer.stop()
                slideshowTimer.stop()
                slideshow.close()
            }
            Keys.onSpacePressed: videoPlayer.playbackState
                                 == MediaPlayer.PlayingState ? videoPlayer.pause(
                                                                   ) : videoPlayer.play()
            Keys.onLeftPressed: videoPlayer.seek(videoPlayer.position - 3000)
            Keys.onRightPressed: videoPlayer.seek(videoPlayer.position + 5000)
        }
    }
}
