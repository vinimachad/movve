//
//  WhosWatchingPresenter.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import Foundation

protocol WhosWatchingPresentingLogic {
    func presentSomething(res: WhosWatchingModel.WhosWatchingLoad.Response)
}

class WhosWatchingPresenter {
    var view: WhosWatchingDisplayLogic?
}

extension WhosWatchingPresenter: WhosWatchingPresentingLogic {
    
    func presentSomething(res: WhosWatchingModel.WhosWatchingLoad.Response) {
        let viewModel = WhosWatchingModel.WhosWatchingLoad.ViewModel()
        view?.displaySomething(viewModel: viewModel)
    }
}
