//
//  OnboardingButtonSectionView.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 20.11.2022.
//

import SwiftUI

struct OnboardingButtonSectionView: View {
    
    let skipAction: () -> Void
    let nextButtonAction: () -> Void
    
    var body: some View {
        ZStack(alignment: .center) {
            HStack {
                Spacer()
                nextButton {
                    nextButtonAction()
                }
                Spacer()
            }
            
            HStack {
                Button {
                    skipAction()
                } label: {
                    Text(L10n.Onboarding.skip)
                        .font(.satoshi(.light, size: 20))
                        .foregroundColor(Assets.Colors.Background.primary)
                }
                
                Spacer()
            }
        }
        .padding(.horizontal, 28)
    }
    
    private func nextButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            Assets.Images.Button.arrowRight
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(14)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Assets.Colors.Pastel.purple)
                )
                .padding(5)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(
                            Assets.Colors.Pastel.purple,
                            style: StrokeStyle(
                                lineWidth: 2,
                                lineCap: .round,
                                dash: [4, 20, 20, 16]
                            )
                        )
                )
        }
        .buttonStyle(.plain)

    }
}

struct OnboardingNextButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButtonSectionView {
            
        } nextButtonAction: {
            
        }
        .previewLayout(.sizeThatFits)

    }
}
