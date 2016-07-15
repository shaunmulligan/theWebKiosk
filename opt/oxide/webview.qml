import com.canonical.Oxide 1.0
import QtQuick 2.0
import "js/units.js" as Units

Item {
    id: root
    WebView {
	id: webview
	url: {
    console.log("got argument: " + Qt.application.arguments[1])
    return Qt.application.arguments[1] or "http://google.com"
  }
	anchors.top: parent.top
	anchors.left: parent.left
	anchors.right: parent.right
	anchors.bottom: keyboard.top
        context: WebContext {
            userAgent: "Mozilla/5.0 (Ubuntu; Tablet) WebKit/537.21"
            userScripts: [
                UserScript {
                    context: "oxide://osk/"
                    url: Qt.resolvedUrl("js/userscript.js")
                    incognitoEnabled: true
                    matchAllFrames: true
                }
            ]
        }

        messageHandlers: [
            ScriptMessageHandler {
                msgId: "inputmethod"
                contexts: ["oxide://osk/"]
                callback: function(msg, frame) {
                    //console.log(msg.args.type, msg.args.state);
                    if (msg.args.type == 'input')
                        keyboard.state = msg.args.state
                }
            }
        ]
    }

    Item {
        id: keyboard
        z: 5
        width: 800
        height: 200
        state: "hide"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -200
        MouseArea { anchors.fill: parent; preventStealing: true }
        Loader {
            id: keyboardLoader
            anchors.fill: parent
            source: "English.qml"
        }
        states: [ State { name: "show" }, State { name: "hide" } ]
        transitions: [
            Transition {
                from: "show"; to: "hide"
                PropertyAnimation { target: keyboard; properties: "anchors.bottomMargin"; to: -200; duration: 150; easing.type: Easing.InOutQuad; }
            },
            Transition {
                from: "hide"; to: "show"
                PropertyAnimation { target: keyboard; properties: "anchors.bottomMargin"; to: "0"; duration: 50; easing.type: Easing.InOutQuad;}
            }
        ]
    }
}
