import Foundation

enum Strings {
    static var gears: String {
        if #available(iOS 14, *) {
                return "gearshape.fill"
             } else {
                return "gear"
             }
    }
}
