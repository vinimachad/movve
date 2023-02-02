//
//  CreateUserNetworkWorker.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

import Foundation

protocol CreateUserNetworkWorkerLogic {
//    func getSomething(req: CreateUserModel.CreateUserLoad.Request) async throws -> CreateUserModel.CreateUserLoad.Response
}

class CreateUserNetworkWorker: CreateUserNetworkWorkerLogic {
    
    // MARK: - Private properties
    
    private var serviceProvider: ServiceProviderProtocol
    
    // MARK: - Init
    
    init(serviceProvider: ServiceProviderProtocol = ServiceProvider.shared) {
        self.serviceProvider = serviceProvider
    }
    
    // func getSomething(req: CreateUserModel.CreateUserLoad.Request) async throws -> CreateUserModel.CreateUserLoad.Response {
    //     let requestProvider = Provider()
    //     return try await serviceProvider.request(
    //         model: CreateUserModel.CreateUserLoad.Response.self,
    //         provider: requestProvider
    //     )
    // }
}
