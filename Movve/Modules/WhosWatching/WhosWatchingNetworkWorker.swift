//
//  WhosWatchingNetworkWorker.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import Foundation

protocol WhosWatchingNetworkWorkerLogic {
    //func getSomething(req: WhosWatchingModel.WhosWatchingLoad.Request) async throws -> WhosWatchingModel.WhosWatchingLoad.Response
}

class WhosWatchingNetworkWorker: WhosWatchingNetworkWorkerLogic {
    
    // MARK: - Private properties
    
    private var serviceProvider: ServiceProviderProtocol
    
    // MARK: - Init
    
    init(serviceProvider: ServiceProviderProtocol = ServiceProvider.shared) {
        self.serviceProvider = serviceProvider
    }
    
    // func getSomething(req: WhosWatchingModel.WhosWatchingLoad.Request) async throws -> WhosWatchingModel.WhosWatchingLoad.Response {
    //     let requestProvider = Provider()
    //     return try await serviceProvider.request(
    //         model: WhosWatchingModel.WhosWatchingLoad.Response.self,
    //         provider: requestProvider
    //     )
    // }
}
