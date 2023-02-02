//
//  CreateUserRouter.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

import SwiftUI

class CreateUserRouter: ObservableObject {

    @Published var presentWhosWatching: Bool = false
    @Published var presentGenericError: Bool = false
    
    func routeToWhosWatching() {
        presentWhosWatching.toggle()
    }
    
    func routeToGenericError() {
        presentGenericError.toggle()
    }
}
