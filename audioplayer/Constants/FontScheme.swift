import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kRobotoMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoMedium, size: size)
    }

    static func kRobotoRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRegular, size: size)
    }

    static func kRobotoBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kRobotoMedium":
            result = self.kRobotoMedium(size: size)
        case "kRobotoRegular":
            result = self.kRobotoRegular(size: size)
        case "kRobotoBold":
            result = self.kRobotoBold(size: size)
        default:
            result = self.kRobotoMedium(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoMedium: String = "Roboto-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRegular: String = "Roboto-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoBold: String = "Roboto-Bold"
    }
}
