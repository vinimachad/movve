//
//  WhosWatchingView.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 02/02/23.
//

import SwiftUI

protocol WhosWatchingDisplayLogic {
    func displaySomething(viewModel: WhosWatchingModel.WhosWatchingLoad.ViewModel)
}

extension WhosWatchingView: WhosWatchingDisplayLogic {
    
    private func fetchSomething() {
        interactor.loadSomething()
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
    
    var columns: [GridItem] = [
        .init(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                LazyVGrid(columns: columns) {
                    ForEach(0..<5) { _ in
                        HStack(alignment: .center) {
                            Color.primaryColor
//                                .frame(width: 100, height: 100)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                .padding(.horizontal, 60)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationTitle("Quem está assistindo?")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: configureView)
    }
}

struct WhosWatchingView_Previews: PreviewProvider {
    static var previews: some View {
        WhosWatchingView()
    }
}
