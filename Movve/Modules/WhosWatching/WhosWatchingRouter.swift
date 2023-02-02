//
//  WhosWatchingRouter.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import SwiftUI

class WhosWatchingRouter: ObservableObject {

    @Published var presentSomething: Bool = false

    func routeToSomething() {
        DispatchQueue.main.async {
            self.presentSomething.toggle()
        }
    }
}
