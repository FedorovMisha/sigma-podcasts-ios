//
//  Account Store.swift
//  sigma-podcasts-ios
//
//  Created by Misha Fedorov on 17.11.2022.
//

import ComposableArchitecture
import Logging

enum AccountState {
    case authorized(_ entity: AccountEntity)
    case notAuthorized
}

enum AccountActions {
    case requestLogin(credentials:  OAuthModel)
    case logout
}

struct GlobalAccountReducer: ReducerProtocol {
    
    var body: Reduce<AccountState, AccountActions> {
        Reduce(log)
        Reduce(handleActions)
    }
    
    func handleActions(into state: inout AccountState, action: AccountActions) -> EffectTask<AccountActions> {
        return .none
    }
    
    func log(into state: inout AccountState, action: AccountActions) -> EffectTask<AccountActions> {
        switch action {
            case .requestLogin:
                logger.info("try login in app")
            case .logout:
                logger.info("logout from app")
        }
        return .none
    }
}

