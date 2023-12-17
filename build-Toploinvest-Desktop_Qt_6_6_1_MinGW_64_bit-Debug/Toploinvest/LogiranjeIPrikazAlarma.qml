import QtQuick

Window {
    id: logiranjeIPrikazAlarmaId
    property string logiranjeIPrikazAlarma: "Logiranje i prikaz alarma"
    visible: true
    width: 1920
    height: 1080
    title: logiranjeIPrikazAlarma
    color: "lightgrey"
    visibility: Window.FullScreen

    TableView {
        id: view
        anchors.fill: parent
        TableViewColumn {
            role: 'city'
            title: "City"
            width: 120
        }
        TableViewColumn {
            role: 'country'
            title: "Country"
            width: 120
        }
        TableViewColumn {
            role: 'area'
            title: "Area"
            width: 80
        }
        TableViewColumn {
            role: 'population'
            title: "Population"
            width: 80
        }
    }
}
