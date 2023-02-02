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
    
    @ObservedResults(User.self, where: {$0.isKid == false})
    private var users
    // MARK: - Init
    
    init(worker: WhosWatchingNetworkWorkerLogic = WhosWatchingNetworkWorker()) {
        self.worker = worker
    }
}

extension WhosWatchingInteractor {
    
    func loadSomething() async {
        print(users[0])
//        do {
//            let req = WhosWatchingModel.WhosWatchingLoad.Request()
//             let response = try await worker.getSomething(req: req)
            let response = WhosWatchingModel.WhosWatchingLoad.Response()
            await presenter?.presentSomething(res: response)
//        } catch let error {
//            print("error->", error)
//        }     
    }
}
