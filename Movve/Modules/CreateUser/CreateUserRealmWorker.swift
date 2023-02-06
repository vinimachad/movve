//
//  CreateUserRealmWorker.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import SwiftUI
import RealmSwift

protocol CreateUserRealmWorkerLogic {
    func setUser(user: User) throws
}

class CreateUserRealmWorker: CreateUserRealmWorkerLogic {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.realm) private var realm
    
    func setUser(user: User) throws {
        try? realm.write {
            realm.add(user)
        }
        dismiss()
    }
}
