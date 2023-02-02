//
//  CreateUserInteractor.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

import SwiftUI
import RealmSwift

class CreateUserInteractor: ObservableObject {
    
    // MARK: - Public properties
    
    @Published var presenter: CreateUserPresentingLogic?
    @Published var name: String = ""
    
    // MARK: - Private properties
    
    private var worker: CreateUserNetworkWorkerLogic
    
    // MARK: - Realms
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.realm) private var realm
    
    @ObservedRealmObject private var user: User
    
    // MARK: - Init
    
    init(worker: CreateUserNetworkWorkerLogic = CreateUserNetworkWorker(), user: User = User()) {
        self.worker = worker
        self.user = user
    }
}

extension CreateUserInteractor {
    
    func loadSomething() async {
        user.name = name
        user.isKid = false
        user.avatar = "teste"
        
        do {
            try realm.write {
                realm.add(user)
                presenter?.navigateToWhosWatching()
            }
            dismiss()
        } catch let error {
            presenter?.presentGenericError()
        }
    }
}
