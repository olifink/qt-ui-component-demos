/**
 * Copyright (c) 2012-2014 Microsoft Mobile.
 */

import QtQuick 1.1
import com.nokia.symbian 1.1
import "../../Constants.js" as Constants

TabBarLayout{
    height: screen.width < screen.height ? privateStyle.tabBarHeightPortrait : privateStyle.tabBarHeightLandscape

    TabButton {
        tab: item1
        text: "List";
        iconSource: "../../Images/Icons/bookmark.svg"
        platformInverted: window.platformInverted;
    }

    TabButton {
        tab: item2
        text: "Map";
        iconSource: platformInverted ? "../../Images/Icons/map_w.svg" : "../../Images/Icons/map.svg"
        platformInverted: window.platformInverted;
    }

    TabButton {
        tab: item3
        text: "Attached";
        iconSource: "../../Images/Icons/attach.svg"
        platformInverted: window.platformInverted;
    }

    TabButton {
        tab: item4
        text: "Favourites";
        iconSource: "../../Images/Icons/favourite.svg"
        platformInverted: window.platformInverted;
    }
}
