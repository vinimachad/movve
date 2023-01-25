//
//  WhosWatchingModel.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

enum WhosWatchingModel {
    
    enum WhosWatchingLoad {
        struct Request: Codable { }
        struct Response: Codable {
            var title: String
        }
        struct ViewModel { }
    }
}
