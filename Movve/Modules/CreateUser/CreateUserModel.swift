//
//  CreateUserModel.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

import Foundation

enum CreateUserModel {
    
    enum CreateUserSave {
        struct Request: Codable { var name: String }
        struct Response: Codable { }
        struct ViewModel { }
    }
}

extension CreateUserModel.CreateUserSave.Request {

    static func fixture(name: String = "") -> CreateUserModel.CreateUserSave.Request {
        CreateUserModel.CreateUserSave.Request(name: name)
    }   
}

extension CreateUserModel.CreateUserSave.Response {

    static func fixture() -> CreateUserModel.CreateUserSave.Response {
        CreateUserModel.CreateUserSave.Response()
    }   
}

extension CreateUserModel.CreateUserSave.ViewModel {

    static func fixture() -> CreateUserModel.CreateUserSave.ViewModel {
        CreateUserModel.CreateUserSave.ViewModel()
    }   
}
