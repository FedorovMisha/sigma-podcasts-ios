/// Обрабатывает xcassets с картинками / цветами
/// Создан для работы со SwiftUI

// swiftlint:disable all

#if os(iOS)
import SwiftUI
#endif


public enum Assets {
    enum Colors {
        static let accentColor = color(named: "AccentColor")
        static let background = color(named: "background")
    }
    enum Images {
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
