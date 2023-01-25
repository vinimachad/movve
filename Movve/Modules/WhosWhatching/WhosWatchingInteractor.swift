//
//  WhosWatchingInteractor.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

protocol WhosWatchingBusinessLogic {
    func load() async
}

class WhosWatchingInteractor {
    
    // MARK: - Public properties
    
    var presenter: WhosWatchingPresentingLogic?
    
    // MARK: - Private properties
    
    private var worker: WhosWatchingNetworkWorkerLogic
    
    // MARK: - Init
    
    init(worker: WhosWatchingNetworkWorkerLogic = WhosWatchingNetworkWorker()) {
        self.worker = worker
    }
}

extension WhosWatchingInteractor: WhosWatchingBusinessLogic {
    
    func load() async {

        do {
            let movies = try await worker.getUsersRequest(req: .init())
            print(movies[0].title)
        } catch let error {
            print(error)
        }
        
        await presenter?.presentUsers()
    }
}
