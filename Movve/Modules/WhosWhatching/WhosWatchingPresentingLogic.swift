//
//  WhosWatchingPresenter.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

protocol WhosWatchingPresentingLogic {
    func presentUsers() async
}

class WhosWatchingPresenter {
    var view: WhosWatchingDisplayLogic?
}

extension WhosWatchingPresenter: WhosWatchingPresentingLogic {
    
    func presentUsers() async {
        let viewModel = WhosWatchingModel.WhosWatchingLoad.ViewModel()
        await view?.displayUsers()
    }
}
