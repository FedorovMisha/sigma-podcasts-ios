// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Logo {
    /// Localizable.strings
    ///   sigma-podcasts-ios
    /// 
    ///   Created by Misha Fedorov on 05.11.2022.
    internal static let createdBy = L10n.tr("Localizable", "logo.createdBy", fallback: "Created by")
  }
  internal enum Onboarding {
    /// Skip
    internal static let skip = L10n.tr("Localizable", "onboarding.skip", fallback: "Skip")
    internal enum Pages {
      internal enum First {
        /// Listen Your Podcasts
        /// Anywhere, Anytime
        internal static let subtitle = L10n.tr("Localizable", "onboarding.pages.first.subtitle", fallback: "Listen Your Podcasts\nAnywhere, Anytime")
        /// Podcasts!
        internal static let title = L10n.tr("Localizable", "onboarding.pages.first.title", fallback: "Podcasts!")
      }
      internal enum Second {
        /// Listen awesome music!
        internal static let subtitle = L10n.tr("Localizable", "onboarding.pages.second.subtitle", fallback: "Listen awesome music!")
        /// Music!
        internal static let title = L10n.tr("Localizable", "onboarding.pages.second.title", fallback: "Music!")
      }
      internal enum Third {
        /// Let's learn with
        /// podcasts!
        internal static let subtitle = L10n.tr("Localizable", "onboarding.pages.third.subtitle", fallback: "Let's learn with\npodcasts!")
        /// Learing!
        internal static let title = L10n.tr("Localizable", "onboarding.pages.third.title", fallback: "Learing!")
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
