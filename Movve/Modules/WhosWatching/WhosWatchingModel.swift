//
//  WhosWatchingModel.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import Foundation

enum WhosWatchingModel {
    
    enum WhosWatchingLoad {
        struct Request: Codable { }
        struct Response: Codable { }
        struct ViewModel { }
    }
}

extension WhosWatchingModel.WhosWatchingLoad.Request {

    static func fixture() -> WhosWatchingModel.WhosWatchingLoad.Request {
        WhosWatchingModel.WhosWatchingLoad.Request()
    }   
}

extension WhosWatchingModel.WhosWatchingLoad.Response {

    static func fixture() -> WhosWatchingModel.WhosWatchingLoad.Response {
        WhosWatchingModel.WhosWatchingLoad.Response()
    }   
}

extension WhosWatchingModel.WhosWatchingLoad.ViewModel {

    static func fixture() -> WhosWatchingModel.WhosWatchingLoad.ViewModel {
        WhosWatchingModel.WhosWatchingLoad.ViewModel()
    }   
}