//
//  View+Extensions.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 18.11.2022.
//

import SwiftUI

extension View {
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    var screeSize: CGSize {
        return UIScreen.main.bounds.size
    }
}

extension View {
    @ViewBuilder func scrollEnabled(_ enabled: Bool) -> some View {
        if enabled {
            self
        } else {
            simultaneousGesture(DragGesture(minimumDistance: 0),
                                including: .all)
        }
    }
}
