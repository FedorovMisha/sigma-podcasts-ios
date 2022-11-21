//
//  Onboarding.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 18.11.2022.
//

import ComposableArchitecture

struct OnboardingFeature: ReducerProtocol {

    func reduce(into state: inout OnboardingState, action: OnboardingActions) -> EffectTask<OnboardingActions> {
        switch action {
            case .nextPage:
                state.currentPage = state.currentPage.nextPage()
            case .skip:
                state.currentPage = Pages.last()
            case .authorize:
                break
        }
        return .none
    }
}

extension OnboardingFeature {
    struct OnboardingState: Equatable {
        var currentPage: Pages = .first
    }
    
    enum OnboardingActions {
        case authorize
        case nextPage
        case skip
    }
    
    enum Pages: Int, CaseIterable {
        case first = 0
        case second
        case third
        
        var title: String {
            switch self {
            case .first:
                return L10n.Onboarding.Pages.First.title
            case .second:
                return L10n.Onboarding.Pages.Second.title
            case .third:
                return L10n.Onboarding.Pages.Third.title
            }
        }
        
        var subtitle: String {
            switch self {
            case .first:
                return L10n.Onboarding.Pages.First.subtitle
            case .second:
                return L10n.Onboarding.Pages.Second.subtitle
            case .third:
                return L10n.Onboarding.Pages.Third.subtitle
            }
        }
        
        func nextPage() -> Pages {
            return Pages(rawValue: self.rawValue + 1) ?? .third
        }
        
        static func last() -> Pages {
            return Self.allCases.last ?? .third
        }
        
    }
}
