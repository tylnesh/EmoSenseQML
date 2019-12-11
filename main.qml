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
    visibility: Qt.WindowFullScreen
    visible: true
    width: (Screen.desktopAvailableWidth <= 2560) ? Screen.desktopAvailableWidth : 2560
    height: width / 1.777777778
    minimumWidth: 1100
    title: qsTr("EmoSense QML Edition")
    property int i: 0

    property var quotesSelected: [1,3,5,11,12,13,14,15,16,19,24,25,28,29,30,32,33,37,40,42,44]

    property var quotesAuthor: [
        "František Mikloško",
        "Miroslav Lajčák",
        "Robert Fico",
        "Martin Klus",
        "Jaroslav Paška",
        "Boris Kollár",
        "József Berényi",
        "Andrej Danko",
        "Robert Fico",
        "Robert Fico",
        "Robert Kaliňák",
        "Robert Fico",
        "Robert Fico",
        "Marek Maďarič",
        "Argument o utečeneckej kríze",
        "Argument o utečeneckej kríze",
        "Argument o utečeneckej kríze",
        "František Mikloško",
        "Marian Kotleba",
        "František Šebej",
        "Ľuboš Blaha",
        "Andrej Danko",
        "Boris Kollár",
        "Juraj Droba",
        "Béla Bugár",
        "Argument o utečeneckej kríze",
        "Argument o utečeneckej kríze",
        "Argument o utečeneckej kríze",
        "Argument o utečeneckej kríze",
        "Robert Kaliňák",
        "Robert Kaliňák",
        "Robert Fico",
        "Robert Fico",
        "Marian Kotleba",
        "Robert Kaliňák",
        "Béla Bugár",
        "Štefan Harabin",
        "Robert Fico",
        "Richard Sulík",
        "Béla Bugár",
        "Béla Bugár",
        "Andrej Danko",
        "Ján Figeľ",
        "Andrej Danko",
        "Béla Bugár",
        "Robert Fico",
        "Andrej Danko",
        "Robert Fico",
        "Robert Fico",
        "Robert Kaliňák"
    ]
    property var quotesParty: [
        "nezaradený",
        "SMER-SD",
        "SMER-SD",
        "SaS",
        "SNS",
        "SME RODINA",
        "SMK",
        "SNS",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD",
        "",
        "",
        "",
        "nezaradený",
        "ĽSNS",
        "MOST-HÍD",
        "SMER-SD",
        "SNS",
        "SME RODINA",
        "SaS",
        "MOST-HÍD",
        "",
        "",
        "",
        "",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD",
        "ĽSNS",
        "SMER-SD",
        "MOST-HÍD",
        "nezaradený",
        "SMER-SD",
        "SaS",
        "MOST-HÍD",
        "MOST-HÍD",
        "SNS",
        "KDH",
        "SNS",
        "MOST-HÍD",
        "SMER-SD",
        "SNS",
        "SMER-SD",
        "SMER-SD",
        "SMER-SD"
]
    property var quotesText : [
"…všetci migranti, ktorí dostali azyl v Belgicku, Francúzsku, Nemecku, kdekoľvek, v rámci EÚ sa môžu pohybovať úplne spokojne. Čiže môžu zaplaviť Slovensko, môžu tu podnikať, môžu sa tu usadiť, také sú pravidlá EÚ. ","        Na svete je 258 miliónov ľudí, ktorí sú charakterizovaní ako migranti. 3,4% svetovej populácie a mimochodom 1 až 1,5 milióna z nich sú Slováci.",
"My sme sa prihlásili do iniciatívy Pesco, to je iniciatíva, spoločná obrana, bezpečnostná politika, pokiaľ ide o európskeho prokurátora, teraz ukazujeme schopnosť v rámci V4 byť mimoriadne aktívny v krajinách, odkadiaľ tí migranti pochádzajú (…).",
"A keď sa pozrieme na tie počty (vo Veľkej Británii, pozn.), tak zďaleka to nie sú len prišelci, migranti z nových členských krajín, tie, ktoré vstúpili do Európskej únie po roku 2004, ale tam je niekoľko desiatok tisíc ľudí, ktorí prišli z Francúzska, z Portugalska, z Talianska a z mnohých iných pôvodných členských krajín Európskej únie…",
"Takže keď začali prvé problémy migračné na Malte a keď prichádzali migranti z Líbye, tak sa zriadil Európsky podporný úrad.",
"To nie sú imigranti, ktorí by utekali, aby sa zachránili svoje životy, v drvivej väčšine sú to ekonomickí imigranti.",
"Na území Slovenska nie sú migranti, respektíve je ich málo. Práve v Gabčíkove a Humennom.",
"(…) takmer všetci migranti sem (Európa, pozn.) prichádzajú z ekonomických dôvodov.",
"V prípade Gabčíkova to sú všetko žiadatelia o politický azyl v Rakúsku, aby bolo zrejmé. To nie sú pre nás určení migranti.",
"Zrazu všetci súhlasia s tým, čo sme hovorili, že absolútna väčšina migrantov sú ekonomickí migranti, ktorí sem prichádzajú za prácou.",
"V našom tábore v Medveďove, kde sú vlastne zaistení nelegálni migranti, tak po jednom vyhlásení nemeckého predstaviteľa o tom, že berú všetkých sýrskych utečencov, ja by som nenazýval vzburou, búchali ešusmi po stoloch, okamžite chceli ísť, pretože ich Nemci pozvali.",
"…hovoríme o státisícoch migrantov (v EÚ, pozn.) a hovoríme o tom, že sú tu krajiny, ktoré to zvládli. Španielsky premiér priamo na rokovaní Európskej rady predstavil program, ktorý španielska vláda aplikovala na boj proti nelegálnej migrácii. No tento program bol úspešný preto, lebo na druhej strane mala partnera španielska vláda. Čiže ak to boli nejaké africké krajiny, odkadiaľ títo migranti išli, zväčša to boli krajiny, ktoré mali funkčné vlády, ako-také funkčné vlády.",
"A čo sa týka toho volebného práva Slovákov žijúcich v zahraničí, je tu jeden zásadný rozdiel – to sú emigranti. To sú ľudia, ktorí majú slovenské občianstvo tým, že sa tu narodili, alebo tým, že sa prípadne priženili alebo vydali a toto je opačná situácia.",
"Prichádzajúci utečenci/imigranti nedodržiavajú európske zákony a neposlúchajú pokyny policajtov (napr. prekračujú hranice ilegálne, odmietajú sa registrovať a žiadať o azyl v prvej krajine, dopúšťajú sa násilností).",
"Utečenci a imigranti predstavujú výrazne zvýšené bezpečnostné riziko – napr. kriminalitu, terorizmus a šírenie zdravotných epidémií.",
"Ľudia, ktorí prichádzajú do Európy v súčasnej imigrantskej vlne, sú väčšinou ekonomickí migranti, nie utečenci.",
"…došlo sem nedávno alebo pred dvomi rokmi 150 irackých kresťanov. (…) Z tých 150 zostalo na Slovensku 75, polovica. To sú momentálne utečenci, ktorí tu žijú.",
"Oni (utečenci zo Sýrie, pozn.) ale nemôžu sa do Sýrie vrátiť a viete z akého jednoduchého, ale žiaľ veľmi smutného dôvodu? Že tie sankcie, ktoré podporuje aj Slovensko, sankcie, ktoré podporuje Európska únia, to nie sú sankcie, ktoré zabraňujú do Sýrie dodávať zbrane a muníciu. To sú sankcie, ktoré zabraňujú Sýrii nakupovať medicínske vybavenie, nakupovať lieky.",
"V Británii je strašné množstvo prisťahovalcov z krajín pôvodného Commonwealthu… predovšetkým ľudia, ktorí prišli z Pakistanu, z Indie a z iných končín toho pôvodného britského impéria, celkom legitímne, nie ako utečenci, sú nositeľmi britských pasov…",
"(…) sú tu naozaj problémy s tým, že samotní utečenci nechcú ísť do krajín typu Litva, Lotyšsko a podobne (…)",
"Tak ako to povedal minister Poľska zahraničných vecí, ktorý hovoril, že si neviem predstaviť, že tu budú popíjať kávu (utečenci, pozn.) a my budeme bojovať za ich slobodu.",
"V Turecku, tam neumierajú (utečenci, pozn.).",
"Tú istú verejnú mienku sa rozhodol ignorovať v prípade Gabčíkova, kde 98% občanov v referende vyjadrilo nesúhlas s tým, aby utečenci boli dovezení do Gabčíkova, ale Fico si to samozrejme hneď zrátal, pozrel sa, že koľko hlasov mal Smer. V Gabčíkove zistil, že ich bolo 158, tak si povedal, že toto môžeme hodiť cez palubu, tam aj tak Smer-sociálnu demokraciu voliť nebudú.",
"Ale na treťom mieste je dôležité si uvedomiť, že sú utečenci, ktorým aj pán minister a podpredseda vlády Lajčák hovorí, že musíme pomôcť.",
"Moslimskí utečenci majú úplne iné hodnoty, napríklad nemajú rešpekt voči ženám.",
"Slovensko nemá problém s utečencami, Nemecko má – utečenci nechcú žiť na Slovensku.",
"Aj my máme podiel na problémoch krajín, z ktorých utečenci utekajú – bojuje sa tam napríklad zbraňami vyrobenými na Slovensku.",
"Utečenci majú ekonomický potenciál pre hosťujúce krajiny a môžu byť súčasťou riešenia európskeho a slovenského problému so starnúcou populáciou.",
"No to vôbec nie je pravda (že utečenci do Grécka najviac prúdia po mori a nie pevninskou hranicou z Turecka, pozn.). Percentuálne je to menšie.",
"Ona (EÚ, pozn.) dokonca ani nehovorí o tom, že to je negatívne, že tí utečenci sem prúdia. Ona hovorí jediné popri tej, tom obale, ktorý tam dala, lepšia kontrola hraníc, nové postavenie agentúry FRONTEX, čo je agentúra zodpovedná za ochranu vonkajších hraníc a mnoho ďalších skvelých nápadov…",
"Aj preto, ak napríklad dnes vidíme, že Rakúsko má obrovský problém s azylovou politikou, pretože má preplnené azylové tábory, tam najmä smerujú títo utečenci, tak sme povedali Rakúšanom, že prosím, zoberieme vám nejakú časť týchto ľudí a na nejaké obdobie sa o nich postaráme tu na Slovensku, pokiaľ sa nebude vybavovať azylová procedúra.",
"Pokiaľ ide o Slovensko. Slovensko, Česká republika, Poľsko a Maďarsko sú krajiny, kde nemajú záujem utečenci zostať. To sú krajiny, cez ktoré chcú prejsť a chcú ísť najmä do Rakúska, do Nemecka, do Francúzska alebo napríklad do Veľkej Británie.",
"Dnes je totiž len zo Sýrie 6 miliónov utečencov, z toho 2 milióny sú v Libanone, 4 milióny sú natlačené aj v Turecku a Sýria týchto ľudí chce prijať všetkých naspäť.",
"Sýria bola jedna z dvoch najrozvinutejších alebo z troch krajín v rámci Blízkeho východu, keď zoberieme arabské krajiny. Teda Jordánsko, Libanon, Sýria.",
"Však viete, 149 tých asýrskych kresťanov tu máme.",
"…Lisabonská zmluva, za ktorú som hlasoval 2007 (…) dala do výlučnej kompetencie (členských krajín, pozn.) migračné a azylové veci. To znamená, my sme neboli povinní prijať ani 1500 migrantov, (…).",
"Žiadatelia o azyl v Rakúsku boli tu (v Gabčíkove, pozn.) držaní, nikto o nich nevedel, museli poslúchať, lebo keby neposlúchali, nedostanú azyl v Rakúsku.",
"…máme tie žiadosti o azyl posúdiť (…) sme to povinní, lebo my sme sa k tomu zaviazali v rôznych medzinárodných dohovoroch, najmä teda Ženevská konvencia…",
"Za našej vlády, v roku 2004, pokiaľ si dobre pamätám, prišlo 10 500 migrantov a pätnásti dostali azyl. Na základe toho zákona, čo sme prijali my, vo vtedajšej vláde.",
"..minulý rok z 330 (žiadostí o azyl, pozn.) len 15 (bolo udelených azylov, pozn.).",
"Keď dostane človek v Rakúsku v azylovom systéme 36-tisíc eur a ešte zadarmo príplatky na lieky…",
"(…) azylových žiadateľov, ktorých bolo za minulý rok asi 60, alebo necelých 60 (…)",
"…Nemci zistili až teraz, že keď tam niekto (žiadateľ o azyl, pozn.) spácha priestupok alebo malý trestný čin, že ho nevedia vyhostiť…",
"Nehovoriac o tom, že v treťom kvartáli minulého roka, to znamená vtedy, keď kulminovala, dá sa povedať tá migračná kríza, tak vtedy viete koľkí ľudia požiadali na Slovensku o azyl? 15.",
"Potvrdilo sa zo správy ministerstva vnútra vyplýva nemeckej (udalosti v Kolíne nad Rýnom, pozn.), že veľká časť týchto útočníkov boli ľudia, ktorí žiadali alebo žiadajú v Nemecku o azyl, teda ide o migrantov.",
"„…azylová politika nebola daná do vienka Európskej únii…“",
"V prípade Gabčíkova to sú všetko žiadatelia o politický azyl v Rakúsku, aby bolo zrejmé. To nie sú pre nás určení migranti.",
"V Rakúsku minulý týždeň požiadalo štrnásťtisíc ľudí, prešlo do Rakúska minulý víkend štrnásťtisíc ľudí a len sedemsto požiadalo o azyl, všetci ostatní utekali ďalej.",
"Keď tento problém, tá migračná vlna bola s Čečencami, všetci Čečenci dostali v Rakúsku azyl, každý jeden. A dneska má Rakúsko…300 bojovníkov ISIS, ktorí sú vonku a sú rakúskymi občanmi."   ]
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
                text: "Nastavenia aplikácie:"
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

            Row {
                spacing: 10

                Text {
                    id: namedQuotesLabel
                    text: "Uvádzať autorov výrokov?"
                    font.family: "Helvetica"
                    font.pointSize: 24
                    color: "black"
                }

                CheckBox {
                    id: isNamedQuotes

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


                    if (!(subjectID.text == "")){
                    //backend.arduinoButtonsPath = arduinoButtonsPath.currentText
                    //backend.arduinoSensorsPath = arduinoSensorsPath.currentText
                    backend.affectivaIP = affectivaIP.text

                    backend.subjectId = subjectID.text
                    backend.subjectAge = subjectAge.text
                    backend.subjectSex = subjectSexCombo.currentText
                    backend.subjectEducation = subjectEducationCombo.currentText
                    backend.writeFile();
                    questionnaire1.visible = true
                    console.log(Screen.desktopAvailableWidth)
                    }
                    else {
                    errorDialog.visible = true
                    }
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

        ScrollView {
            anchors.fill: parent
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn

            ColumnLayout {
                spacing: 10

                Rectangle {
                    width: questionnaire1.width
                    height: questionnaire1.height / 6

                    Text {
                        anchors.fill: parent
                        padding: 5
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WordWrap
                        text: qsTr("Na nasledujúcej strane sú uvedené tvrdenia, ktoré opisujú Vaše možné správanie. Použite prosím nižšie uvedenú škálu (1 – 5) k zhodnoteniu toho, do akej miery Vás jednotlivé tvrdenia vystihujú. Opisujte samých seba, aký ste v súčasnej dobe, nie takých, akými by ste chceli byť v budúcnosti. Opisujte samých seba tak, ako vnímate samých seba vo vzťahu k druhým ľuďom rovnakého pohlavia a približne rovnakého veku. Každé tvrdenie si starostlivo prečítajte a svoju odpoveď zaznamenajte do príslušnej kolónky.
\n
1 – Vôbec nevystihuje, 2 – Skôr nevystihuje, 3 – Ani vystihuje, ani nevystihuje, 4 – Skôr vystihuje, 5 – Úplne vystihuje")
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5


                    Text {
                        id: textQ1_1
                        text: qsTr("1. Rada/Rád zabávam spoločnosť.")

                    }


                    ButtonGroup {
                        id: rowQ1_b1
                        buttons: rowQ1_1.children




                    }

                    Row {
                        id: rowQ1_1




                        RadioButton {
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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("11. Na večierkoch sa rozprávam s mnohými ľuďmi.")
                    }

                    ButtonGroup {
                        id: rowQ1_b11
                        buttons: rowQ1_11.children
                    }

                    Row {
                        id: rowQ1_11

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr(
                                  "12. Som vnímavá/vnímavý k pocitom druhých..")
                    }

                    ButtonGroup {
                        id: rowQ1_b12
                        buttons: rowQ1_12.children
                    }

                    Row {
                        id: rowQ1_12

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("13. Mám rada/rád poriadok.")
                    }

                    ButtonGroup {
                        id: rowQ1_b13
                        buttons: rowQ1_13.children
                    }

                    Row {
                        id: rowQ1_13

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("14. Ľahko sa rozruším..")
                    }

                    ButtonGroup {
                        id: rowQ1_b14
                        buttons: rowQ1_14.children
                    }

                    Row {
                        id: rowQ1_14

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("15. Mám ťažkosti porozumieť abstraktným nápadom..")
                    }

                    ButtonGroup {
                        id: rowQ1_b15
                        buttons: rowQ1_15.children
                    }

                    Row {
                        id: rowQ1_15

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("16. Držím sa v úzadí..")
                    }

                    ButtonGroup {
                        id: rowQ1_b16
                        buttons: rowQ1_16.children
                    }

                    Row {
                        id: rowQ1_16

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("17. V skutočnosti sa nezaujímam o ostatných.
.")
                    }

                    ButtonGroup {
                        id: rowQ1_b17
                        buttons: rowQ1_17.children
                    }

                    Row {
                        id: rowQ1_17

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("18. Často sa mi niečo nepodarí..")
                    }

                    ButtonGroup {
                        id: rowQ1_b18
                        buttons: rowQ1_18.children
                    }

                    Row {
                        id: rowQ1_18

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("19. Málokedy sa cítim nešťastná/ nešťastný..")
                    }

                    ButtonGroup {
                        id: rowQ1_b19
                        buttons: rowQ1_19.children
                    }

                    Row {
                        id: rowQ1_19

                        RadioButton {

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

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("20. Nemám dobrú predstavivosť..")
                    }

                    ButtonGroup {
                        id: rowQ1_b20
                        buttons: rowQ1_20.children
                    }

                    Row {
                        id: rowQ1_20

                        RadioButton {

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
                    Layout.alignment: Qt.AlignRight
                    Text {
                        anchors.centerIn: parent
                        font.family: "Helvetica"
                        font.pointSize: 36
                        text: qsTr("Uložiť")
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {

try{
                            backend.questionnaire1 = [rowQ1_b1.checkedButton.text, rowQ1_b2.checkedButton.text, rowQ1_b3.checkedButton.text, rowQ1_b4.checkedButton.text, rowQ1_b5.checkedButton.text, rowQ1_b6.checkedButton.text, rowQ1_b7.checkedButton.text, rowQ1_b8.checkedButton.text, rowQ1_b9.checkedButton.text, rowQ1_b10.checkedButton.text, rowQ1_b11.checkedButton.text, rowQ1_b12.checkedButton.text, rowQ1_b13.checkedButton.text, rowQ1_b14.checkedButton.text, rowQ1_b15.checkedButton.text, rowQ1_b16.checkedButton.text, rowQ1_b17.checkedButton.text, rowQ1_b18.checkedButton.text, rowQ1_b19.checkedButton.text, rowQ1_b20.checkedButton.text]
                            backend.writeQ1()
    questionnaire2.visible = true
                        questionnaire1.close()
} catch(e) {errorDialog.visible = true}

                        }
                    }
                }
            }
        }
    }

    Window {
        id: questionnaire2
        visible: false
        width: root.width
        height: root.height
        title: "NFCS"

        ScrollView {
            anchors.fill: parent
            ColumnLayout {
                spacing: 10

                Rectangle {
                    width: questionnaire2.width
                    height: questionnaire2.height / 6

                    Text {
                        anchors.fill: parent
                        padding: 5
                        horizontalAlignment: Text.AlignJustify
                        wrapMode: Text.WordWrap
                        text: qsTr("Prečítajte si, prosím, pozorne každé z nasledujúcich tvrdení a posúďte, nakoľko s nimi súhlasíte. Odpovedajte podľa uvedenej 6-bodovej škály: \n
1 vôbec nesúhlasím, 2 stredne nesúhlasím, 3 mierne nesúhlasím, 4 mierne súhlasím, 5 stredne súhlasím, 6 úplne súhlasím")
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("1. Nemám rád situácie, ktoré sú neurčité.")
                    }

                    ButtonGroup {
                        id: rowQ2_b1
                        buttons: rowQ2_1.children
                    }

                    Row {
                        id: rowQ2_1

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("2. Nemám rád otázky, na ktoré možno odpovedať rôznymi spôsobmi.")
                    }

                    ButtonGroup {
                        id: rowQ2_b2
                        buttons: rowQ2_2.children
                    }

                    Row {
                        id: rowQ2_2

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("3. Uvedomujem si, že k môjmu temperamentu sa hodí usporiadaný život s pravidelným režimom.")
                    }

                    ButtonGroup {
                        id: rowQ2_b3
                        buttons: rowQ2_3.children
                    }

                    Row {
                        id: rowQ2_3

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("4. Cítim sa nesvoj, keď nerozumiem, prečo došlo k nejakej udalosti v mojom živote.")
                    }

                    ButtonGroup {
                        id: rowQ2_b4
                        buttons: rowQ2_4.children
                    }

                    Row {
                        id: rowQ2_4

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("5. Som podráždený, keď niekto nesúhlasí s tým, o čom sú všetci ostatní členovia skupiny presvedčení.")
                    }

                    ButtonGroup {
                        id: rowQ2_b5
                        buttons: rowQ2_5.children
                    }

                    Row {
                        id: rowQ2_5

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("6. Nerád vstupujem do nejakej situácie bez toho, aby som vedel, čo od nej môžem očakávať.
")
                    }

                    ButtonGroup {
                        id: rowQ2_b6
                        buttons: rowQ2_6.children
                    }

                    Row {
                        id: rowQ2_6

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("7. Keď urobím rozhodnutie, cítim úľavu.")
                    }

                    ButtonGroup {
                        id: rowQ2_b7
                        buttons: rowQ2_7.children
                    }

                    Row {
                        id: rowQ2_7

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("8. Keď čelím problému, túžim čo najskôr nájsť riešenie.")
                    }

                    ButtonGroup {
                        id: rowQ2_b8
                        buttons: rowQ2_8.children
                    }

                    Row {
                        id: rowQ2_8

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("9. Ak by som hneď nenašiel riešenie problému, bol by som čoskoro netrpezlivý a podráždený.")
                    }

                    ButtonGroup {
                        id: rowQ2_b9
                        buttons: rowQ2_9.children
                    }

                    Row {
                        id: rowQ2_9

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("10. Nie som rád s ľuďmi, ktorí sú schopní robiť neočakávané veci.")
                    }

                    ButtonGroup {
                        id: rowQ2_b10
                        buttons: rowQ2_10.children
                    }

                    Row {
                        id: rowQ2_10

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("11. NNemám rád, keď niekoho vyjadrenie môže mať viacero významov.
")
                    }

                    ButtonGroup {
                        id: rowQ2_b11
                        buttons: rowQ2_11.children
                    }

                    Row {
                        id: rowQ2_11

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr(
                                  "12. Uvedomujem si, že zavedenie pevného režimu mi umožňuje sa viac tešiť zo života.")
                    }

                    ButtonGroup {
                        id: rowQ2_b12
                        buttons: rowQ2_12.children
                    }

                    Row {
                        id: rowQ2_12

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("13. Mám rád jasný a štruktúrovaný spôsob života.")
                    }

                    ButtonGroup {
                        id: rowQ2_b13
                        buttons: rowQ2_13.children
                    }

                    Row {
                        id: rowQ2_13

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("14. Zvyčajne nezvažujem veľa rôznych názorov skôr, než si vytvorím vlastné stanovisko.")
                    }

                    ButtonGroup {
                        id: rowQ2_b14
                        buttons: rowQ2_14.children
                    }

                    Row {
                        id: rowQ2_14

                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }

                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Row {
                    padding: 5

                    Text {
                        text: qsTr("15. Nemám rád nepredvídateľné situácie.")
                    }

                    ButtonGroup {
                        id: rowQ2_b15
                        buttons: rowQ2_15.children
                    }

                    Row {
                        id: rowQ2_15


                        RadioButton {

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
                        RadioButton {
                            text: qsTr("6")
                        }
                    }
                }


                Rectangle{
                color: "black"
                height: 1
                width: questionnaire1.width
                }
                Rectangle {
                    id: submitQ2
                    width: 150
                    height: 100
                    color: "green"
                    Layout.alignment: Qt.AlignRight
                    Text {
                        anchors.centerIn: parent
                        font.family: "Helvetica"
                        font.pointSize: 36
                        text: qsTr("Uložiť")
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {

                            try{
                            backend.questionnaire2 = [rowQ2_b1.checkedButton.text, rowQ2_b2.checkedButton.text, rowQ2_b3.checkedButton.text, rowQ2_b4.checkedButton.text, rowQ2_b5.checkedButton.text, rowQ2_b6.checkedButton.text, rowQ2_b7.checkedButton.text, rowQ2_b8.checkedButton.text, rowQ2_b9.checkedButton.text, rowQ2_b10.checkedButton.text, rowQ2_b11.checkedButton.text, rowQ2_b12.checkedButton.text, rowQ2_b13.checkedButton.text, rowQ2_b14.checkedButton.text, rowQ2_b15.checkedButton.text]
                            backend.writeQ2()
                            backend.connectAll()
                            quotesWindow.visible= true
                            questionnaire2.close()
                               } catch(e) {errorDialog.visible = true}
                        }
                    }
                }
            }
        }
    }

    Window {
            id: quotesWindow
            visible: false
            width: root.width
            height: root.height

            Text{
                id: quotesWindowText
                width: parent.width

            horizontalAlignment: Text.AlignJustify
            wrapMode: Text.WordWrap
            font.pointSize: 16
            text: (isNamedQuotes.checked == true) ? quotesAuthor[quotesSelected[i]] + " - " + quotesParty[quotesSelected[i]] + " - " + quotesText[quotesSelected[i]] : quotesText[quotesSelected[i]]

            }

            Image {
                        id: samImage
                        source: "assets/SAM.jpg"
                        anchors.centerIn: parent
                    }


            Slider {
                        anchors.left: samImage.left
                        anchors.top: samImage.top
                        width: samImage.width - 100
                        anchors.leftMargin: 50
                        anchors.topMargin: 200
                        id: samValenceSlider
                        from: 1
                        value: 5
                        stepSize: 1
                        snapMode: Slider.SnapAlways
                        to: 9
                        onMoved: {
                        backend.samValence = samValenceSlider.value
                        backend.writeValence()
                        }
                    }



            Slider {
                        anchors.left: samImage.left
                        anchors.top: samImage.top
                        width: samImage.width - 100
                        anchors.leftMargin: 50
                        anchors.topMargin: 450
                        id: samBelievebalitySlider
                        from: 1
                        value: 5
                        stepSize: 1
                        snapMode: Slider.SnapAlways
                        to: 9

                        onMoved: {
                        backend.samBelief = samBelievebalitySlider.value
                        backend.writeBelief()
                        }
                    }

            Rectangle {
                id: appraiseQuote
                width: 200
                height: 100
                color: "green"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                Text {
                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pointSize: 36
                    text: qsTr("Hodnotiť")
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        backend.samValence = samValenceSlider.value
                        backend.samBelief = samBelievebalitySlider.value
                        backend.writeSAM();

                       if (i < quotesSelected.length) i++
                       else quotesWindow.close()
                       quotesWindowText.text =  (isNamedQuotes.checked == true) ? quotesAuthor[quotesSelected[i]] + " - " + quotesParty[quotesSelected[i]] + " - " + quotesText[quotesSelected[i]] : quotesText[quotesSelected[i]]
                       samBelievebalitySlider.value = 5
                       samValenceSlider.value = 5


                    }
                }
            }






        }


    Window {
       // modality: Qt.WindowModal
        x: root.width/4
        y: root.height/4
        height: root.height/2
        width: root.width/2
        flags: Qt.WindowStaysOnTopHint
        visible: false
        title: "Je nutné vyplniť formulár"
        id: errorDialog


            Text {
                text: "Prosím, vyplňte všetky kolónky!"
                color: "black"
                anchors.centerIn: parent
            }

            Button {
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: 10
                anchors.rightMargin: 10
                text: "OK"
                onClicked: {errorDialog.visible= false;}


        }
    }


}

