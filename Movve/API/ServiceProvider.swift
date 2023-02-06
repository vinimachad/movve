//
//  ServiceProvider.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

protocol ServiceProviderProtocol {
    static var shared: ServiceProviderProtocol { get }
    func request<T: Codable>(model: T.Type, provider: RequestProvider) async throws -> T
}

final class ServiceProvider {
    
    // MARK: - Shared
    
    static var shared: ServiceProviderProtocol = ServiceProvider()
    
    // MARK: - Init
    
    private init() { }
    
    // MARK: - Private properties
    
    private var session = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    // MARK: - Validations

    final private func validate(data: Data, response: URLResponse) throws {
        guard let code = (response as? HTTPURLResponse)?.statusCode else {
            throw APIError.connectionError(data)
        }
        
        guard (200..<300).contains(code) else {
            throw APIError.apiError
        }
    }
}

extension ServiceProvider: ServiceProviderProtocol {
    
    final func request<T: Codable>(model: T.Type, provider: RequestProvider) async throws -> T {
        let (data, res) = try await session.data(for: provider.buildRequest())
        try validate(data: data, response: res)
        return try data.decode(type: model)
    }
}
