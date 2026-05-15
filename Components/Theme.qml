pragma Singleton
import QtQuick 2.0

QtObject {
    enum Mode {
        Light,
        Dark
    }

    property var mode: Theme.Mode.Light         // 主题模式：明、暗
    property var basicColor: Theme.slate        // 基础色
    property var primaryColor: Theme.blue       // 主配色
    property var secondaryColor: Theme.purple   // 副配色

    readonly property var white: rgb(255, 255, 255)
    readonly property var black: rgb(0, 0, 0)

    readonly property var slate_50:  rgb(248,250,252)
    readonly property var slate_100: rgb(241,245,249)
    readonly property var slate_200: rgb(226,232,240)
    readonly property var slate_300: rgb(202,213,226)
    readonly property var slate_400: rgb(144,161,185)
    readonly property var slate_500: rgb(98,116,142)
    readonly property var slate_600: rgb(69,85,108)
    readonly property var slate_700: rgb(49,65,88)
    readonly property var slate_800: rgb(29,41,61)
    readonly property var slate_900: rgb(9,13,24)
    readonly property var slate_950: rgb(2,6,24)
    readonly property var slate: [slate_50, slate_100, slate_200, slate_300, slate_400, slate_500, slate_600, slate_700, slate_800, slate_900, slate_950]

    readonly property var red_50: rgb(254,242,242)
    readonly property var red_100: rgb(255,226,226)
    readonly property var red_200: rgb(255,201,201)
    readonly property var red_300: rgb(255,162,162)
    readonly property var red_400: rgb(255,100,103)
    readonly property var red_500: rgb(251,44,54)
    readonly property var red_600: rgb(231,0,11)
    readonly property var red_700: rgb(193,0,7)
    readonly property var red_800: rgb(159,7,18)
    readonly property var red_900: rgb(130,24,26)
    readonly property var red_950: rgb(70,8,9)
    readonly property var red: [red_50, red_100, red_200, red_300, red_400, red_500, red_600, red_700, red_800, red_900, red_950]

    readonly property var yellow_50: rgb(254,252,232)
    readonly property var yellow_100: rgb(254,249,194)
    readonly property var yellow_200: rgb(255,240,133)
    readonly property var yellow_300: rgb(255,223,32)
    readonly property var yellow_400: rgb(253,199,0)
    readonly property var yellow_500: rgb(240,177,0)
    readonly property var yellow_600: rgb(208,135,0)
    readonly property var yellow_700: rgb(166,95,0)
    readonly property var yellow_800: rgb(121,67,3)
    readonly property var yellow_900: rgb(115,62,10)
    readonly property var yellow_950: rgb(67,32,4)
    readonly property var yellow: [yellow_50, yellow_100, yellow_200, yellow_300, yellow_400, yellow_500, yellow_600, yellow_700, yellow_800, yellow_900, yellow_950]

    readonly property var blue_50: rgb(239,246,255)
    readonly property var blue_100: rgb(219,234,254)
    readonly property var blue_200: rgb(190,219,255)
    readonly property var blue_300: rgb(142,197,255)
    readonly property var blue_400: rgb(80,162,255)
    readonly property var blue_500: rgb(43,127,255)
    readonly property var blue_600: rgb(21,93,252)
    readonly property var blue_700: rgb(20,71,230)
    readonly property var blue_800: rgb(25,60,184)
    readonly property var blue_900: rgb(28,57,142)
    readonly property var blue_950: rgb(22,37,86)
    readonly property var blue: [blue_50, blue_100, blue_200, blue_300, blue_400, blue_500, blue_600, blue_700, blue_800, blue_900, blue_950]

    readonly property var orange_50: rgb(255,247,237)
    readonly property var orange_100: rgb(255,237,212)
    readonly property var orange_200: rgb(255,214,167)
    readonly property var orange_300: rgb(255,184,106)
    readonly property var orange_400: rgb(255,137,4)
    readonly property var orange_500: rgb(255,105,0)
    readonly property var orange_600: rgb(245,74,0)
    readonly property var orange_700: rgb(202,53,0)
    readonly property var orange_800: rgb(159,45,0)
    readonly property var orange_900: rgb(126,42,12)
    readonly property var orange_950: rgb(68,19,6)
    readonly property var orange: [orange_50, orange_100, orange_200, orange_300, orange_400, orange_500, orange_600, orange_700, orange_800, orange_900, orange_950]

    readonly property var green_50: rgb(240,253,244)
    readonly property var green_100: rgb(219,252,231)
    readonly property var green_200: rgb(185,248,207)
    readonly property var green_300: rgb(123,241,168)
    readonly property var green_400: rgb(5,223,114)
    readonly property var green_500: rgb(0,201,80)
    readonly property var green_600: rgb(0,166,62)
    readonly property var green_700: rgb(0,130,54)
    readonly property var green_800: rgb(1,102,48)
    readonly property var green_900: rgb(13,84,43)
    readonly property var green_950: rgb(3,46,21)
    readonly property var green: [green_50, green_100, green_200, green_300, green_400, green_500, green_600, green_700, green_800, green_900, green_950]

    readonly property var purple_50: rgb(250,245,255)
    readonly property var purple_100: rgb(243,232,255)
    readonly property var purple_200: rgb(233,212,255)
    readonly property var purple_300: rgb(218,178,255)
    readonly property var purple_400: rgb(194,122,255)
    readonly property var purple_500: rgb(173,70,255)
    readonly property var purple_600: rgb(152,16,250)
    readonly property var purple_700: rgb(130,0,219)
    readonly property var purple_800: rgb(110,17,176)
    readonly property var purple_900: rgb(89,22,139)
    readonly property var purple_950: rgb(60,3,102)
    readonly property var purple: [purple_50, purple_100, purple_200, purple_300, purple_400, purple_500, purple_600, purple_700, purple_800, purple_900, purple_950]

    function rgb(r, g, b) {
        return Qt.rgba(r/255.0, g/255.0, b/255.0, 1.0)
    }

    function mainColor(color) {
        if (Array.isArray(color)) {
            return color[5]
        }

        return color
    }

    function contrastColor(color) {
        if (Array.isArray(color)) {
            return mode === Theme.Mode.Dark ? color[4] : color[6]
        }

        return color
    }

    function weakColor(color) {
        if (Array.isArray(color)) {
            return mode === Theme.Mode.Dark ? color[7] : color[3]
        }

        return color
    }

    function lightColor(color) {
        if (Array.isArray(color)) {
            return color[0]
        }

        return color
    }

    function darkColor(color) {
        if (Array.isArray(color)) {
            return color[10]
        }

        return color
    }
}
