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
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    minimumWidth: 1100
    title: qsTr("EmoSense QML Edition")
    property int i: 0
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
        color: "#eeeeee"

        Text {
            x: 450
            y: 24
            text: "EmoSense QML Edition - FakeNews"
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.family: "Helvetica"
            font.pointSize: 56
            color: "black"
        }
    }

    Rectangle {
        id: inputRectangle
        anchors.left: parent.left
        anchors.top: titleRectangle.bottom
        width: parent.width / 3
        height: parent.height - titleRectangle.height - bottomRectangle.height
        color: "#fefefe"

        ColumnLayout {

            spacing: 50

            Text {
                id: inputHeader
                text: "Zadajte zdroje dát:"
                font.family: "Helvetica"
                font.pointSize: 32
                color: "black"
            }

            Row {
                spacing: 10

                Text {
                    id: affectivaLabel
                    text: "Affectiva IP:"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "black"
                }

                TextField {
                    id: affectivaIP
                    text: "127.0.0.1:5555"
                    placeholderText: qsTr("Affectiva IP")
                }
            }
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
            spacing: 10
            Text {
                id: infoHeader
                text: "Zadajte informacie o subjekte"
                wrapMode: Text.WrapAnywhere
                font.family: "Helvetica"
                font.pointSize: 32
                color: "black"
            }
            Row {
                spacing: 10
                Text {
                    id: subjectIDLabel
                    text: "Id:"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "black"
                }

                TextField {
                    id: subjectID
                    text: backend.subjectId

                    placeholderText: qsTr("Id subjektu")
                }
            }
            Row {
                spacing: 10
                Text {
                    id: ageLabel
                    text: "Vek:"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "black"
                }

                TextField {
                    id: subjectAge
                    text: backend.subjectAge
                    placeholderText: qsTr("Vek")
                }
            }

            Row {
                spacing: 10
                Text {
                    id: sexLabel
                    text: "Pohlavie:"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "black"
                }
                ComboBox {
                    id: subjectSexCombo
                    model: ["Muž", "Žena", "Iné"]
                }
            }

            Row {
                Column {
                    spacing: 5
                    Text {
                        id: educationLabel
                        text: "Najvyššie dosiahnuté vzdelanie:"
                        font.family: "Helvetica"
                        font.pointSize: 24
                        color: "black"
                    }
                    ComboBox {
                        width: infoRectangle.width
                        id: subjectEducationCombo

                        model: ["Stredná škola - výučný list", "Stredná škola - maturita", "1. stupeň vysokoškolského vzdelania", "2. stupeň vysokoškolského vzdelania", "3. stupeň vysokoškolského vzdelania"]
                    }
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
                    //backend.arduinoButtonsPath = arduinoButtonsPath.currentText
                    //backend.arduinoSensorsPath = arduinoSensorsPath.currentText
                    backend.affectivaIP = affectivaIP.text

                    backend.subjectId = subjectID.text
                    backend.subjectAge = subjectAge.text
                    backend.subjectSex = subjectSexCombo.currentText
                    backend.subjectEducation = subjectEducationCombo.currentText
                    questionnaire1.visible = true
                    console.log(Screen.desktopAvailableWidth);
                }
            }
        }
    }

    Window {
        id: questionnaire1
        visible: false
        width: Screen.desktopAvailableWidth
        height: Screen.desktopAvailableHeight
        ColumnLayout{
        spacing: 10

        Rectangle{
            width: questionnaire1.width
            height: questionnaire1.height / 6
            Text{
anchors.fill:parent
            padding: 20
            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.WordWrap
            text: qsTr("Na nasledujúcej strane sú uvedené tvrdenia, ktoré opisujú Vaše možné správanie. Použite prosím nižšie uvedenú škálu (1 – 5) k zhodnoteniu toho, do akej miery Vás jednotlivé tvrdenia vystihujú. Opisujte samých seba, aký ste v súčasnej dobe, nie takých, akými by ste chceli byť v budúcnosti. Opisujte samých seba tak, ako vnímate samých seba vo vzťahu k druhým ľuďom rovnakého pohlavia a približne rovnakého veku. Každé tvrdenie si starostlivo prečítajte a svoju odpoveď zaznamenajte do príslušnej kolónky.
\n
1 – Vôbec nevystihuje, 2 – Skôr nevystihuje, 3 – Ani vystihuje, ani nevystihuje, 4 – Skôr vystihuje, 5 – Úplne vystihuje")
        }
}


        Row {
        Text{
            text: qsTr("1. Rada/Rád zabávam spoločnosť.")
            }

        ButtonGroup {
            id: buttonGroup
        }

        }
        ListView {
            model: ["1", "2", "3", "4", "5"]
            orientation: Qt.Horizontal
            delegate: RadioDelegate {
                text: modelData
                ButtonGroup.group: buttonGroup
            }
        }



        }
    }
}

