//
//  WhosWatchingView.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import SwiftUI

protocol WhosWatchingDisplayLogic {
    func displaySomething(viewModel: WhosWatchingModel.WhosWatchingLoad.ViewModel) async
}

extension WhosWatchingView: WhosWatchingDisplayLogic {
    
    private func fetchSomething() {
        Task {
            await interactor.loadSomething()
        }
    }
    
    func displaySomething(viewModel: WhosWatchingModel.WhosWatchingLoad.ViewModel) {
        // TODO: -
        router.routeToSomething()
    }
}

struct WhosWatchingView: View {
    
    @StateObject var interactor = WhosWatchingInteractor()
    @StateObject var router = WhosWatchingRouter()
    // @StateObject var dataStore = WhosWatchingDataStore()
    
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: fetchSomething) {
                Text("Button test")
            }
            .navigationDestination(isPresented: $router.presentSomething, destination: {
                Text("Something")
            })
        }   
            .onAppear(perform: configureView)
            .onAppear(perform: fetchSomething)
    }
}

struct WhosWatchingView_Previews: PreviewProvider {
    static var previews: some View {
        WhosWatchingView()
    }
}
