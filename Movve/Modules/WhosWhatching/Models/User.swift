//
//  User.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

struct User {
    let name: String
    let avatar: String
    let isKid: Bool
}

extension User {
    static func fixture(name: String = "", avatar: String = "", isKid: Bool = false) -> User {
        User(name: name, avatar: avatar, isKid: isKid)
    }
}
