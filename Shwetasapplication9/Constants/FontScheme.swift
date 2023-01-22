import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kMontserratRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanRegular, size: size)
    }

    static func kMontserratRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanBold, size: size)
    }

    static func kMontserratSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratSemiBold, size: size)
    }

    static func kMontserratMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratMedium, size: size)
    }

    static func kMontserratBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratBold, size: size)
    }

    static func kMontserratRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRegular, size: size)
    }

    static func kMontserratRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanMedium, size: size)
    }

    static func kMontserratAlternatesBlack(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratAlternatesBlack, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kMontserratRomanRegular":
            result = self.kMontserratRomanRegular(size: size)
        case "kMontserratRomanBold":
            result = self.kMontserratRomanBold(size: size)
        case "kMontserratSemiBold":
            result = self.kMontserratSemiBold(size: size)
        case "kMontserratMedium":
            result = self.kMontserratMedium(size: size)
        case "kMontserratBold":
            result = self.kMontserratBold(size: size)
        case "kMontserratRegular":
            result = self.kMontserratRegular(size: size)
        case "kMontserratRomanMedium":
            result = self.kMontserratRomanMedium(size: size)
        case "kMontserratAlternatesBlack":
            result = self.kMontserratAlternatesBlack(size: size)
        default:
            result = self.kMontserratRomanRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanRegular: String = "MontserratRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanBold: String = "MontserratRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratSemiBold: String = "Montserrat-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratMedium: String = "Montserrat-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratBold: String = "Montserrat-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRegular: String = "Montserrat-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanMedium: String = "MontserratRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratAlternatesBlack: String = "MontserratAlternates-Black"
    }
}
