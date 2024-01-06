import QtQuick
import QtQuick.Controls 6.5

Window {
    id: logiranjeIPrikazAlarmaId
    property string logiranjeIPrikazAlarma: "Logiranje i prikaz alarma"
    visible: true
    width: 1920
    height: 1080
    title: logiranjeIPrikazAlarma
    color: "lightgrey"
    visibility: Window.FullScreen

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

    Rectangle {
        id: back_rectangle
        x: 54
        y: 906
        width: 84
        height: 42
        color: "#40006e8c"
        border.color: "#006e8c"
        border.width: 2

        Text{
            color: "#006e8c"
            text: qsTr("NAZAD")
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            anchors.centerIn: back_rectangle
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                logiranjeIPrikazAlarmaId.close();
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
                text: "Trenutni pregled: <b>Logiranje i prikaz alarma</b>"
                font.pixelSize: 20
            }
        }
}
