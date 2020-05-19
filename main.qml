import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600
    title: qsTr("Windows Imagine test")

    // to show that it's not just qsTr that has issues
    // define my own "qsTr" that does nothing

    function myQsTr(foo) {
        return foo;
    }

    menuBar: MenuBar {
        Menu {
            title: myQsTr("&File")
            Action {
                text: "&Quit"  // purposely don't use qsTr or myQsTr
                shortcut: StandardKey.Quit
                onTriggered: mainWindow.close()
            }
        }
    }
}
