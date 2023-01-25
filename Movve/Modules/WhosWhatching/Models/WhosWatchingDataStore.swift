//
//  WhosWatchingDataStore.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import SwiftUI

class WhosWatchingDataStore: ObservableObject {
    
    @Published var users: [User]
    
    init(users: [User] = []) {
        self.users = users
    }
}

extension WhosWatchingDataStore {
    
    static func fixture(users: [User] = []) -> WhosWatchingDataStore {
        WhosWatchingDataStore(users: users)
    }
}
