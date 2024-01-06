import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

//for QT Design Studio
//import Toploinvest_design

Window {
    id: pocetniEkranId
    property string pocetniEkran : "Pocetni Ekran"
    property int velicinaTexta : 18
    visible: true
    width: 1920
    height: 1080
    title: pocetniEkran
    color: "lightgrey"
    //visibility: Window.FullScreen
    //flags: Qt.FramelessWindowHint

    // Naslovni text sa imenom Firme
    Text {
        id: imeFirmeId
        property string imeFirme : "Toploinvest"
        color: "#006e8c"
        text: "TOPLOINVEST"
        anchors.topMargin: 27
        anchors.horizontalCenterOffset: -1
        font.styleName: "Bold"
        font.bold: true
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        font {
            pixelSize: 50
            family : "Verdana"
        }
    }

    // Red pravougaonika na sredini ekrana
    Row {

        id: rowId
        spacing: 15
        anchors.centerIn: parent

        Rectangle {

            id: konfiguracijaId
            height: 350
            width: 300
            color: "#40006e8c"
            border.color: "#006e8c"
            border.width: 2

            Image {
                source : "qrc:/Slike/konfiguracija_ikona.png"
                anchors.horizontalCenterOffset: 0
                width: 150
                height : 150
                anchors.topMargin: 27
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata1: "KONFIGURACIJA"
                x: 40
                y: 220
                color: "#006e8c"
                text: nazivKvadrata1
                font.pixelSize: 25
                font.bold: true
                font.family: "Verdana"
                anchors.verticalCenterOffset: 75
                anchors.horizontalCenterOffset: 0
                anchors.centerIn: konfiguracijaId
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var konfiguracijaWindow = Qt.createComponent("Konfiguracija.qml").createObject(parent);
                    //pocetniEkranId.visible = false;
                    konfiguracijaWindow.show();
                }
            }
        }

        Rectangle {

            id: opsteUpravljanjeINadgledanjeId
            height: 350
            width: 300
            color: "#40006e8c"
            border.color: "#006e8c"
            border.width: 2

            Image {
                source : "qrc:/Slike/opste_upravljanje_i_nadgledanje_ikona.png"
                anchors.horizontalCenterOffset: 0
                width: 150
                height : 150
                anchors.topMargin: 27
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata2: "OPŠTE UPRAVLJANJE I NADGLEDANJE"
                x: 40
                y: 220
                color: "#006e8c"
                text: qsTr("OPŠTE \nUPRAVLJANJE I \n NADGLEDANJE")
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.family: "Verdana"
                anchors.verticalCenterOffset: 75
                anchors.horizontalCenterOffset: 0
                anchors.centerIn: opsteUpravljanjeINadgledanjeId
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var konfiguracijaWindow = Qt.createComponent("OpsteUpravljanjeINadgledanje.qml").createObject(parent);
                    //pocetniEkranId.visible = false;
                    konfiguracijaWindow.show();
                }
            }
        }

        Rectangle {

            id: postavkeAlarmaId
            height: 350
            width: 300
            color: "#40006e8c"
            border.color: "#006e8c"
            border.width: 2

            Image {
                source : "qrc:/Slike/postavke_alarma_ikona.png"
                anchors.horizontalCenterOffset: 0
                width: 150
                height : 150
                anchors.topMargin: 27
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata3: "POSTAVKE ALARMA"
                x: 40
                y: 220
                color: "#006e8c"
                text: qsTr("POSTAVKE \nALARMA")
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.family: "Verdana"
                anchors.verticalCenterOffset: 75
                anchors.horizontalCenterOffset: 0
                anchors.centerIn: postavkeAlarmaId
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var konfiguracijaWindow = Qt.createComponent("PostavkeAlarma.qml").createObject(parent);
                    //pocetniEkranId.visible = false;
                    konfiguracijaWindow.show();
                }
            }
        }

        Rectangle {

            id: logiranjeIPrikazAlarma
            height: 350
            width: 300
            color: "#40006e8c"
            border.color: "#006e8c"
            border.width: 2

            Image {
                source : "qrc:/Slike/logiranje_i_prikaz_alrama_ikona.png"
                anchors.horizontalCenterOffset: 0
                width: 150
                height : 150
                anchors.topMargin: 27
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata4: "LOGIRANJE I PRIKAZ ALARMA"
                x: 40
                y: 220
                color: "#006e8c"
                text: qsTr("LOGIRANJE I \nPRIKAZ ALARMA")
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.family: "Verdana"
                anchors.verticalCenterOffset: 75
                anchors.horizontalCenterOffset: 0
                anchors.centerIn: logiranjeIPrikazAlarma
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var konfiguracijaWindow = Qt.createComponent("LogiranjeIPrikazAlarma.qml").createObject(parent);

                    konfiguracijaWindow.show();
                    //pocetniEkranId.close();
                }
            }
        }
    }

    // Prikaz vremena donji desni ćošak
    Text {
            id: foo
            font.pointSize: 15
            anchors{
                bottom: parent.bottom
                right: parent.right
            }
            function set() {
                var currentDate = new Date();
                foo.text = formatDateTime(currentDate, "yyyy-MM-dd hh:mm:ss   ");
            }
         }
    Timer {
            id: textTimer
            interval: 1000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: foo.set()
        }

    function formatDateTime(date, format) {
          var pad = function (n) { return n < 10 ? "0" + n : n; };
          return format.replace(/yyyy|MM|dd|hh|mm|ss/g, function (match) {
              switch (match) {
                  case "yyyy": return date.getFullYear();
                  case "MM": return pad(date.getMonth() + 1);
                  case "dd": return pad(date.getDate());
                  case "hh": return pad(date.getHours());
                  case "mm": return pad(date.getMinutes());
                  case "ss": return pad(date.getSeconds());
                  default: return match;
              }
          });
    }

    Row {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 150

            Text {
                text: "Trenutni korisnik: <b>Tehničar</b>"
                font.pixelSize: 20
            }

            Text {
                text: "Režim rada: <b>Standardni</b>"
                font.pixelSize: 20
            }

            Text {
                text: "Trenutni pregled: <b>Početna stranica</b>"
                font.pixelSize: 20
            }
        }
}
