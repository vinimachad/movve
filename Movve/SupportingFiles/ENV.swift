//
//  ENV.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 03/02/23.
//

import Foundation

enum InfoKeys: String {
    case apiBaseUrl = "api_base_url"
}

enum RunKeys: String {
    case apiSecretKey = "API_SECRET_KEY"
}

class ENV {
    
    // MARK: - Get env values methods
    
    static func value(for key: InfoKeys) -> String {
        guard let value = infoDict[key.rawValue] as? String else { return "" }
        
        switch key {
        case .apiBaseUrl: return value
        }
    }
    
    static func value(for key: RunKeys) -> String {
        ProcessInfo.processInfo.environment[key.rawValue] ?? ""
    }
    
    // MARK: - Private methods
    
    private static var infoDict: [String: Any] {
        guard let infoDict = Bundle.main.infoDictionary else { return [:] }
        return infoDict
    }
}
