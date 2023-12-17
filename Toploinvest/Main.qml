import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window

Window {
    id: pocetniEkranId
    property string pocetniEkran : "Pocetni Ekran"
    visible: true
    width: 1920
    height: 1080
    title: pocetniEkran
    color: "lightgrey"
    property int velicinaTexta : 18
    //flags: Qt.FramelessWindowHint

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

    Text {
        id: dateTimeId
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        text: {
            var now = new Date();
            var hours = now.getHours().toString().padStart(2, '0');
            var minutes = now.getMinutes().toString().padStart(2, '0');
            var seconds = now.getSeconds().toString().padStart(2, '0');
            var day = now.getDate().toString().padStart(2, '0');
            var month = (now.getMonth() + 1).toString().padStart(2, '0');
            var year = now.getFullYear();

            return day + "." + month + "." + year + " " + hours + ":" + minutes + ":" + seconds;
        }
        font.pixelSize: 14
        color: "black"
    }
}
