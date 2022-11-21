/// Обрабатывает xcassets с картинками / цветами
/// Создан для работы со SwiftUI

// swiftlint:disable all

#if os(iOS)
import SwiftUI
#endif


public enum Assets {
    enum Colors {
        static let accentColor = color(named: "AccentColor")
        enum Background {
            static let background = color(named: "Background/Background")
            static let primary = color(named: "Background/Primary")
        }
        enum Gray {
            static let mid = color(named: "Gray/Mid")
            static let primary = color(named: "Gray/Primary")
            static let secondary = color(named: "Gray/Secondary")
        }
        enum Pastel {
            static let fiolet = color(named: "Pastel/Fiolet")
            static let pink = color(named: "Pastel/Pink")
            static let purple = color(named: "Pastel/Purple")
            static let red = color(named: "Pastel/Red")
            static let yelllow = color(named: "Pastel/Yelllow")
        }
    }
    enum Images {
        enum Button {
            static let arrowRight = image(named: "Button/arrow-Right")
        }
        static let amico = image(named: "amico")
        static let cuate = image(named: "cuate")
        static let onboardingLine = image(named: "onboarding_line")
        static let pana = image(named: "pana")
        static let redHoodieHat = image(named: "red_hoodie_hat")
    }
    enum Preview_Assets {
    }
}

private func image(named: String) -> Image {
    return Image(named)
}

private func color(named: String) -> Color {
    return Color(named)
}
