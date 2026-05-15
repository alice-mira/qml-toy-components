pragma Singleton
import QtQuick 2.0

QtObject {
    function min(x, y) {
        return x <= y ? x : y
    }

    function max(x, y) {
        return x >= y ? x : y
    }
}
