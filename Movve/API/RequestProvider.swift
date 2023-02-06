//
//  RequestProvider.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

protocol RequestProvider {
    var baseURL: URL { get }
    var headers: [String: String] { get }
    var httpMethod: HTTPMethod { get }
    var path: String { get }
    var urlParameters: [URLQueryItem] { get }
    var bodyParameters: [String: Any] { get }
    func buildRequest() -> URLRequest
}

extension RequestProvider {
    
    var baseURL: URL {
        Host.baseURL(path: path)
    }
    
    var headers: [String: String] {
        [
            "Authorization": ENV.value(for: .apiSecretKey),
        ]
    }
    
    var urlParameters: [URLQueryItem] {
        []
    }
    
    var bodyParameters: [String: Any] {
        [:]
    }
    
    func buildRequest() -> URLRequest {
        var request = URLRequest(url: baseURL)
        request.httpMethod = httpMethod.rawValue
        setHeaders(&request, header: headers)
        return request
    }
    
    // MARK: - Config Request methods
    
    private func setHeaders(_ request: inout URLRequest, header: [String: String]?) {
        header?.keys.forEach {
            request.setValue(header?[$0], forHTTPHeaderField: $0)
        }
    }
}
