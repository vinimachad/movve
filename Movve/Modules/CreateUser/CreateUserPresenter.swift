//
//  CreateUserPresenter.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

import Foundation

protocol CreateUserPresentingLogic {
    func presentSomething(res: CreateUserModel.CreateUserSave.Response) async
    func presentGenericError()
    func navigateToWhosWatching()
}

class CreateUserPresenter {
    
    var view: CreateUserDisplayLogic?
}

extension CreateUserPresenter: CreateUserPresentingLogic {
    
    func presentSomething(res: CreateUserModel.CreateUserSave.Response) async {
        let viewModel = CreateUserModel.CreateUserSave.ViewModel()
        await view?.displaySomething(viewModel: viewModel)
    }
    
    func navigateToWhosWatching() {
        view?.navigateToWhosWatching()
    }
    
    func presentGenericError() {
        view?.presentGenericError()
    }
}
