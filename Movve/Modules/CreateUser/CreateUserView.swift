//
//  CreateUserView.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 26/01/23.
//

import SwiftUI

protocol CreateUserDisplayLogic {
    func displaySomething(viewModel: CreateUserModel.CreateUserSave.ViewModel)
    func navigateToWhosWatching()
    func presentGenericError()
}

extension CreateUserView: CreateUserDisplayLogic {
    
    private func fetchSomething() {
//        interactor.loadSomething()
        router.presentWhosWatching.toggle()
    }
    
    // MARK: - CreateUserDisplayLogic
    
    func displaySomething(viewModel: CreateUserModel.CreateUserSave.ViewModel) {
        // TODO: -
    }
    
    func navigateToWhosWatching() {
        router.routeToWhosWatching()
    }
    
    func presentGenericError() {
        router.routeToGenericError()
    }
}

struct CreateUserView: View {
    
    @StateObject var interactor: CreateUserInteractor = CreateUserInteractor()
    @StateObject var router: CreateUserRouter = CreateUserRouter()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Como podemos \nchamar você?")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    
                TextField("Digite seu nome", text: $interactor.name)
                    .setTextField()
                    .padding([.vertical, .horizontal], 60)

                Button(action: fetchSomething) {
                    Text("Confirmar")
                }.buttonStyle(PrimaryButtonStyle())
            }

            .navigationDestination(
                isPresented: $router.presentWhosWatching,
                destination: { WhosWatchingView() }
            )
        }
        .onAppear(perform: configureView)
    }
}

struct CreateUserView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserView()
    }
}
