import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    id: pocetniEkranId
    property string pocetniEkran : "Pocetni Ekran"
    property int velicinaTexta : 18
    visible: true
    width: 1920
    height: 1080
    title: pocetniEkran
    color: "lightgrey"
    visibility: ApplicationWindow.FullScreen // Set to fullscreen
    //flags: Qt.FramelessWindowHint

    // Naslovni text sa imenom Firme
    Text {
        id: imeFirmeId
        property string imeFirme : "Toploinvest"
        text: imeFirme
        color: "darkblue"
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        font {
            pixelSize: 50
            family : "Alata"
        }
    }

    // Red pravougaonika na sredini ekrana
    Row {

        id: rowId
        spacing: 15
        anchors.centerIn: parent

        Rectangle {

            id: konfiguracijaId
            height: 300
            width: 250
            color: "lightblue"

            Image {
                source : "qrc:/Slike/konfiguracija_ikona.png"
                width: 150
                height : 150
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata1: "Konfiguracija"
                text: nazivKvadrata1
                anchors.centerIn: konfiguracijaId
                font {
                    pixelSize : velicinaTexta
                }
            }
        }

        Rectangle {

            id: opsteUpravljanjeINadgledanjeId
            height: 300
            width: 250
            color: "lightblue"

            Image {
                source : "qrc:/Slike/opste_upravljanje_i_nadgledanje_ikona.png"
                width: 125
                height : 130
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata2: "Opšte upravljanje i nadgledanje"
                text: nazivKvadrata2
                anchors.centerIn: opsteUpravljanjeINadgledanjeId
                font {
                    pixelSize : velicinaTexta
                }
            }
        }

        Rectangle {

            id: postavkeAlarmaId
            height: 300
            width: 250
            color: "lightblue"

            Image {
                source : "qrc:/Slike/postavke_alarma_ikona.png"
                width: 150
                height : 150
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata3: "Postavke alarma"
                text: nazivKvadrata3
                anchors.centerIn: postavkeAlarmaId
                font {
                    pixelSize : velicinaTexta
                }
            }
        }

        Rectangle {

            id: logiranjeIPrikazAlarma
            height: 300
            width: 250
            color: "lightblue"

            Image {
                source : "qrc:/Slike/logiranje_i_prikaz_alrama_ikona.png"
                width: 150
                height : 150
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                property string nazivKvadrata4: "Logiranje i prikaz alarma"
                text: nazivKvadrata4
                anchors.centerIn: logiranjeIPrikazAlarma
                font {
                    pixelSize : velicinaTexta
                }
            }
        }
    }

    // Prikaz vremena donji desni ćošak
    Text {
            id: foo
            font.pointSize: 12
            anchors{
                bottom: parent.bottom
                right: parent.right
            }
            function set() {
                var currentDate = new Date();
                foo.text = formatDateTime(currentDate, "yyyy-MM-dd hh:mm:ss");
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
            spacing: 50

            Text {
                text: "Trenutni korisnik: <b>Tehničar</b>"
                font.pixelSize: 14
            }

            Text {
                text: "Režim rada: <b>Standardni</b>"
                font.pixelSize: 14
            }

            Text {
                text: "Trenutni pregled: <b>Početna stranica</b>"
                font.pixelSize: 14
            }
        }
}
