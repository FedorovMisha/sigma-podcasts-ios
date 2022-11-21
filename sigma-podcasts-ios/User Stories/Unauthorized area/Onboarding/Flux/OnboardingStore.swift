//
//  Store.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 18.11.2022.
//

import ComposableArchitecture

let onboardingStore = StoreOf<OnboardingFeature>(
    initialState: .init(),
    reducer: OnboardingFeature()
)
