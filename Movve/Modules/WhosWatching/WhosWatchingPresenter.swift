//
//  WhosWatchingPresenter.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import Foundation

protocol WhosWatchingPresentingLogic {
    func presentSomething(res: WhosWatchingModel.WhosWatchingLoad.Response) async
}

class WhosWatchingPresenter {
    var view: WhosWatchingDisplayLogic?
}

extension WhosWatchingPresenter: WhosWatchingPresentingLogic {
    
    func presentSomething(res: WhosWatchingModel.WhosWatchingLoad.Response) async {
        let viewModel = WhosWatchingModel.WhosWatchingLoad.ViewModel()
        await view?.displaySomething(viewModel: viewModel)
    }
}
