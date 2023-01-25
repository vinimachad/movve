//
//  WhosWatchingNetworkWorker.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

protocol WhosWatchingNetworkWorkerLogic {
    func getUsersRequest(req: WhosWatchingModel.WhosWatchingLoad.Request) async throws -> [WhosWatchingModel.WhosWatchingLoad.Response]
}

class WhosWatchingNetworkWorker: WhosWatchingNetworkWorkerLogic {
    
    // MARK: - Private properties
    
    private var serviceProvider: ServiceProviderProtocol
    
    // MARK: - Init
    
    init(serviceProvider: ServiceProviderProtocol = ServiceProvider.shared) {
        self.serviceProvider = serviceProvider
    }
    
    func getUsersRequest(req: WhosWatchingModel.WhosWatchingLoad.Request) async throws -> [WhosWatchingModel.WhosWatchingLoad.Response] {
        let requestProvider = UsersProvider()
        return try await serviceProvider.request(
            model: [WhosWatchingModel.WhosWatchingLoad.Response].self,
            provider: requestProvider
        )
    }
}
