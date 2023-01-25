//
//  WhosWatchingConfigurator.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import SwiftUI

extension WhosWatchingView {
    
    func configureView() -> some View {
        var view = self
        let interactor = WhosWatchingInteractor()
        let presenter = WhosWatchingPresenter()
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view

        return view
    }
}
