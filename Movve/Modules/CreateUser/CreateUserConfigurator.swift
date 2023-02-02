//
//  CreateUserConfigurator.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

extension CreateUserView {
    
    func configureView() {
        let view = self
        let presenter = CreateUserPresenter()
        presenter.view = view
        interactor.presenter = presenter
    }
}
