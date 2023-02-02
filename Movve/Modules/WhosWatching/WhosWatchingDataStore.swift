//
//  WhosWatchingDataStore.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import SwiftUI

class WhosWatchingDataStore: ObservableObject {
    
    @Published var data: [String]

    init(data: [String] = []) {
        self.data = data
    }
}

extension WhosWatchingDataStore {
    
    static func fixture(data: [String] = []) -> WhosWatchingDataStore {
        WhosWatchingDataStore(data: data)
    }
}