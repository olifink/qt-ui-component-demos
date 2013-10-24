/**
 * Copyright (c) 2012 Nokia Corporation.
 */

import QtQuick 1.1
import com.nokia.symbian 1.1

ToolBarLayout {
    property bool itemsEnabled

    ToolButton {
        platformInverted: window.platformInverted
        flat: true
        iconSource: "toolbar-back"
        onClicked: window.pageStack.depth <= 1 ? Qt.quit() : window.pageStack.pop()
    }

    ButtonRow {
        checkedButton: list
        ToolButton {
            id: list
            platformInverted: window.platformInverted
            iconSource: platformInverted ? "../../Images/Icons/map_w.svg" : "../../Images/Icons/map.svg"
            enabled: itemsEnabled
        }
        ToolButton {
            platformInverted: window.platformInverted
            iconSource: platformInverted ? "../../Images/Icons/document_w.svg" : "../../Images/Icons/document.svg"
            enabled: itemsEnabled
        }
        ToolButton {
            platformInverted: window.platformInverted
            iconSource: platformInverted ? "../../Images/Icons/text_w.svg" : "../../Images/Icons/text.svg"
            enabled: itemsEnabled
        }
    }

}