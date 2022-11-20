// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

extension Font {
  public static func satoshi(_ style: SatoshiStyle, fixedSize: CGFloat) -> Font {
    return Font.custom(style.rawValue, fixedSize: fixedSize)
  }

  public static func satoshi(_ style: SatoshiStyle, size: CGFloat, relativeTo textStyle: TextStyle = .body) -> Font {
    return Font.custom(style.rawValue, size: size, relativeTo: textStyle)
  }

  public enum SatoshiStyle: String {
    case black = "Satoshi-Black"
    case blackItalic = "Satoshi-BlackItalic"
    case bold = "Satoshi-Bold"
    case boldItalic = "Satoshi-BoldItalic"
    case italic = "Satoshi-Italic"
    case light = "Satoshi-Light"
    case lightItalic = "Satoshi-LightItalic"
    case medium = "Satoshi-Medium"
    case mediumItalic = "Satoshi-MediumItalic"
    case regular = "Satoshi-Regular"
  }
}
 