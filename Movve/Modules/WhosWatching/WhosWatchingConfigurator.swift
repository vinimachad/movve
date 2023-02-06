//
//  WhosWatchingConfigurator.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import SwiftUI

extension WhosWatchingView {
    
    func configureView() {
        let view = self
        let presenter = WhosWatchingPresenter()
        presenter.view = view
        interactor.presenter = presenter
    }
}
