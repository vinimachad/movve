//
//  User.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import SwiftUI
import RealmSwift

class User: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name = ""
    @Persisted var avatar = ""
    @Persisted var isKid = false
}

//extension User {
//    static func fixture(name: String = "", avatar: String = "", isKid: Bool = false) -> User {
//        User(name: name, avatar: avatar, isKid: isKid)
//    }
//}
