//
//  Host.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

enum Host {
    
    static func baseURL(path: String) -> URL {
        let baseUrlString = ENV.value(for: .apiBaseUrl)
        guard let url = URL(string: "\(baseUrlString)\(path)") else { fatalError("URL não suportada") }
        return url
    }
}
