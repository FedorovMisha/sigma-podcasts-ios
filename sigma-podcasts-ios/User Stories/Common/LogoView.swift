//
//  LogoView.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 20.11.2022.
//

import SwiftUI

struct LogoView: View {
    
    let type: Types

    var body: some View {
        VStack {
            switch type {
            case .inline:
                inlineLogo()
            case .createdBy:
                createdByLogo()
            }
        }
        .font(.satoshi(.bold, size: 14))
        .foregroundColor(Assets.Colors.Background.primary)

    }
    
    private func inlineLogo() -> some View {
        logoAttributedText()
    }

    private func createdByLogo() -> some View {
        VStack {
            Text(L10n.Logo.createdBy)
                .foregroundColor(Assets.Colors.Gray.primary)
            logoAttributedText()
        }
        
    }
    
    private func logoAttributedText() -> some View {
        HStack(spacing: 0) {
            Text("_RED")
            Text(verbatim: "_HOODIE_")
                .foregroundColor(Assets.Colors.Pastel.red)
            Text("CAT_")
        }
    }
}

extension LogoView {
    enum Types {
        case inline
        case createdBy
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LogoView(type: .inline)
                .previewLayout(.sizeThatFits)
            
            LogoView(type: .createdBy)
                .previewLayout(.sizeThatFits)
        }
    }
}
