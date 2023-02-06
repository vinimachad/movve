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
    
    private var worker: CreateUserRealmWorkerLogic
    
    // MARK: - Realms
    
    @ObservedRealmObject private var user: User
    
    // MARK: - Init
    
    init(worker: CreateUserRealmWorkerLogic = CreateUserRealmWorker(), user: User = User()) {
        self.worker = worker
        self.user = user
    }
}

extension CreateUserInteractor {
    
    func loadSomething() {
        user.name = name
        user.isKid = false
        user.avatar = "teste"
        do {
            try worker.setUser(user: user)
            presenter?.navigateToWhosWatching()
        } catch {
            presenter?.presentGenericError()
        }
    }
}
