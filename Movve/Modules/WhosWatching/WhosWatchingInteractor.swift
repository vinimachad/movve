//
//  WhosWatchingInteractor.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import Foundation
import RealmSwift

class WhosWatchingInteractor: ObservableObject {
    
    // MARK: - Public properties
    
    @Published var presenter: WhosWatchingPresentingLogic?
    
    // MARK: - Private properties
    
    private var worker: WhosWatchingNetworkWorkerLogic
    
    @ObservedResults(User.self)
    private var users
    // MARK: - Init
    
    init(worker: WhosWatchingNetworkWorkerLogic = WhosWatchingNetworkWorker()) {
        self.worker = worker
    }
}

extension WhosWatchingInteractor {
    
    func loadSomething() {
        let response = WhosWatchingModel.WhosWatchingLoad.Response()
        presenter?.presentSomething(res: response)
    }
}
