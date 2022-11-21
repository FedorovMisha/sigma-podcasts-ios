//
//  OnboardingView.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 18.11.2022.
//

import SwiftUI
import ComposableArchitecture

struct OnboardingView: View {
    
    @ObservedObject private var flux = ViewStoreOf<OnboardingFeature>(onboardingStore)

    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    scrolableContent(by: proxy)
                        .frame(maxHeight: proxy.size.height * 0.6)
                    Spacer()
                }
                VStack {
                    Spacer()
                    
                    textContent(state: flux.currentPage)
                        .frame(maxHeight: proxy.size.height * 0.4)
                }
            }
        }
    }
    
    private func scrolableContent(by proxy: GeometryProxy) -> some View {
        GeometryReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { scrollProxy in
                    ZStack(alignment: .topLeading) {
                        curve(by: proxy)
                        
                        HStack {
                            // MARK: - Pana, first page
                            illustrationStack(
                                image: Assets.Images.pana,
                                with: proxy,
                                alignment: .topLeading
                            )
                            .id(OnboardingFeature.Pages.first)
                            
                            // MARK: - Amico, second page
                            illustrationStack(
                                image: Assets.Images.amico,
                                with: proxy,
                                alignment: .center
                            )
                            .id(OnboardingFeature.Pages.second)
                            
                            // MARK: - Cuate, third page
                            illustrationStack(
                                image: Assets.Images.cuate,
                                with: proxy,
                                alignment: .topTrailing
                            )
                            .id(OnboardingFeature.Pages.third)
                        }
                    }
                    .onChange(of: flux.state.currentPage) { newValue in
                        withAnimation(.easeIn(duration: 0.35)) {
                            scrollProxy.scrollTo(newValue)
                        }
                    }
                }
            }
            .allowsHitTesting(false)
            .clipped(antialiased: false)
        }
    }
    
    private func illustrationStack(
        image: Image,
        with proxy: GeometryProxy,
        alignment: Alignment
    ) -> some View {
        VStack(alignment: alignment.horizontal) {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 330)
        }
        .frame(width: proxy.size.width, height: proxy.size.height, alignment: alignment)
    }
    
    @ViewBuilder private func textContent(state: OnboardingFeature.Pages) -> some View {
        VStack {
            Text(state.title)
                .font(.satoshi(.black, size: 40))
                .padding(.bottom, 13)

            Text(state.subtitle)
                .font(.satoshi(.light, size: 20))
                .foregroundColor(Assets.Colors.Gray.primary)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            OnboardingButtonSectionView {
                flux.send(.skip, animation: .easeIn(duration: 0.35))
            } nextButtonAction: {
                flux.send(.nextPage, animation: .easeIn(duration: 0.35))
            }

            Spacer()

            LogoView(type: .createdBy)
        }
        .foregroundColor(Assets.Colors.Background.primary)
    }
    
    private func curve(by proxy: GeometryProxy) -> some View {
        OnboardingCurvePath()
            .stroke(
                Assets.Colors.Pastel.purple,
                style: StrokeStyle(
                    lineWidth: 130,
                    lineCap: .round,
                    lineJoin: .round
                )
            )
            .frame(
                maxWidth: proxy.size.width * 3
            )
            .padding(.horizontal, 28)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingView()
            
            OnboardingView()
                .previewDevice("iPhone SE (2nd generation)")
            
            OnboardingView()
                .previewDevice("iPhone 8")
            
            OnboardingView()
                .previewDevice("iPhone 12 mini")
        }
    }
}

