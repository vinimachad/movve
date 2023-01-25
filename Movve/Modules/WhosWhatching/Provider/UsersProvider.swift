//
//  UsersProvider.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

class UsersProvider: RequestProvider {
    
    var httpMethod: HTTPMethod {
        .get
    }
    
    var path: String {
        ""
    }
}
