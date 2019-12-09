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
    width: (Screen.desktopAvailableWidth <= 2560) ? Screen.desktopAvailableWidth : 2560
    height: width / 1.777777778
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
                    console.log(Screen.desktopAvailableWidth)
                }
            }
        }
    }

    Window {
        id: questionnaire1
        visible: false
        width: root.width
        height: root.height
        title: "IPIP"

        ScrollView{
        anchors.fill: parent
            ColumnLayout {
            spacing: 10

            Rectangle {
                width: questionnaire1.width
                height: questionnaire1.height / 6

                Text {
                    anchors.fill: parent
                    padding: 20
                    horizontalAlignment: Text.AlignJustify
                    wrapMode: Text.WordWrap
                    text: qsTr("Na nasledujúcej strane sú uvedené tvrdenia, ktoré opisujú Vaše možné správanie. Použite prosím nižšie uvedenú škálu (1 – 5) k zhodnoteniu toho, do akej miery Vás jednotlivé tvrdenia vystihujú. Opisujte samých seba, aký ste v súčasnej dobe, nie takých, akými by ste chceli byť v budúcnosti. Opisujte samých seba tak, ako vnímate samých seba vo vzťahu k druhým ľuďom rovnakého pohlavia a približne rovnakého veku. Každé tvrdenie si starostlivo prečítajte a svoju odpoveď zaznamenajte do príslušnej kolónky.
\n
1 – Vôbec nevystihuje, 2 – Skôr nevystihuje, 3 – Ani vystihuje, ani nevystihuje, 4 – Skôr vystihuje, 5 – Úplne vystihuje")
                }
            }



            Row {
                padding: 20

                Text {
                    text: qsTr("1. Rada/Rád zabávam spoločnosť.")
                }

                ButtonGroup {
                    id: rowQ1_b1
                    buttons: rowQ1_1.children
                }

                Row {
                    id: rowQ1_1

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("2. Mám pochopenie pre pocity iných.")
                }

                ButtonGroup {
                    id: rowQ1_b2
                    buttons: rowQ1_2.children
                }

                Row {
                    id: rowQ1_2

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("3. Každodenné povinnosti urobím hneď.")
                }

                ButtonGroup {
                    id: rowQ1_b3
                    buttons: rowQ1_3.children
                }

                Row {
                    id: rowQ1_3

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("4. Často sa mi mení nálada.")
                }

                ButtonGroup {
                    id: rowQ1_b4
                    buttons: rowQ1_4.children
                }

                Row {
                    id: rowQ1_4

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("5. Mám živú predstavivosť.")
                }

                ButtonGroup {
                    id: rowQ1_b5
                    buttons: rowQ1_5.children
                }

                Row {
                    id: rowQ1_5

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("6. Nehovorím veľa.")
                }

                ButtonGroup {
                    id: rowQ1_b6
                    buttons: rowQ1_6.children
                }

                Row {
                    id: rowQ1_6

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("7. Nezaujímam sa o problémy iných.")
                }

                ButtonGroup {
                    id: rowQ1_b7
                    buttons: rowQ1_7.children
                }

                Row {
                    id: rowQ1_7

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("8. Často zabúdam dať veci na správne miesto.")
                }

                ButtonGroup {
                    id: rowQ1_b8
                    buttons: rowQ1_8.children
                }

                Row {
                    id: rowQ1_8

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("9. Väčšinu času som spokojná/spokojný.")
                }

                ButtonGroup {
                    id: rowQ1_b9
                    buttons: rowQ1_9.children
                }

                Row {
                    id: rowQ1_9

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("10. Nezaujímajú ma abstraktné myšlienky.")
                }

                ButtonGroup {
                    id: rowQ1_b10
                    buttons: rowQ1_10.children
                }

                Row {
                    id: rowQ1_10

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("11. Na večierkoch sa rozprávam s mnohými ľuďmi.")
                }

                ButtonGroup {id: rowQ1_b11
                    buttons: rowQ1_11.children
                }

                Row {
                    id: rowQ1_11

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("12. Som vnímavá/vnímavý k pocitom druhých..")
                }

                ButtonGroup {id: rowQ1_b12
                    buttons: rowQ1_12.children
                }

                Row {
                    id: rowQ1_12

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("13. Mám rada/rád poriadok.")
                }

                ButtonGroup {id: rowQ1_b13
                    buttons: rowQ1_13.children
                }

                Row {
                    id: rowQ1_13

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("14. Ľahko sa rozruším..")
                }

                ButtonGroup {id: rowQ1_b14
                    buttons: rowQ1_14.children
                }

                Row {
                    id: rowQ1_14

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("15. Mám ťažkosti porozumieť abstraktným nápadom..")
                }

                ButtonGroup {id: rowQ1_b15
                    buttons: rowQ1_15.children
                }

                Row {
                    id: rowQ1_15

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("16. Držím sa v úzadí..")
                }

                ButtonGroup {id: rowQ1_b16
                    buttons: rowQ1_16.children
                }

                Row {
                    id: rowQ1_16

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("17. V skutočnosti sa nezaujímam o ostatných.
.")
                }

                ButtonGroup {id: rowQ1_b17
                    buttons: rowQ1_17.children
                }

                Row {
                    id: rowQ1_17

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("18. Často sa mi niečo nepodarí..")
                }

                ButtonGroup {id: rowQ1_b18
                    buttons: rowQ1_18.children
                }

                Row {
                    id: rowQ1_18

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("19. Málokedy sa cítim nešťastná/ nešťastný..")
                }

                ButtonGroup {id: rowQ1_b19
                    buttons: rowQ1_19.children
                }

                Row {
                    id: rowQ1_19

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }
            }

            Row {
                padding: 20

                Text {
                    text: qsTr("20. Nemám dobrú predstavivosť..")
                }

                ButtonGroup {id: rowQ1_b20
                    buttons: rowQ1_20.children
                }

                Row {
                    id: rowQ1_20

                    RadioButton {
                        checked: true
                        text: qsTr("1")
                    }

                    RadioButton {
                        text: qsTr("2")
                    }

                    RadioButton {
                        text: qsTr("3")
                    }

                    RadioButton {
                        text: qsTr("4")
                    }

                    RadioButton {
                        text: qsTr("5")
                    }
                }


            }
            Rectangle {
                id: submitQ1
                width: 150
                height: 100
                color: "green"
                anchors.right: parent.right
                Text{
                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pointSize: 36
                text: qsTr("Uložiť")
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        backend.q1 = [rowQ1_b1.checkedButton.text, rowQ1_b2.checkedButton.text, rowQ1_b3.checkedButton.text , rowQ1_b4.checkedButton.text,
                                      rowQ1_b5.checkedButton.text, rowQ1_b6.checkedButton.text, rowQ1_b7.checkedButton.text , rowQ1_b8.checkedButton.text,
                                      rowQ1_b9.checkedButton.text, rowQ1_b10.checkedButton.text, rowQ1_b11.checkedButton.text , rowQ1_b12.checkedButton.text,
                                      rowQ1_b13.checkedButton.text, rowQ1_b14.checkedButton.text, rowQ1_b15.checkedButton.text , rowQ1_b16.checkedButton.text,
                                      rowQ1_b17.checkedButton.text, rowQ1_b18.checkedButton.text, rowQ1_b19.checkedButton.text , rowQ1_b20.checkedButton.text ]


                    }
                }
            }
            }




            }








        }


    }

