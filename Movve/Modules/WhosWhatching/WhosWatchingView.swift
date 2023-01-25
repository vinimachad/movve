//
//  WhosWatchingView.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import SwiftUI

protocol WhosWatchingDisplayLogic {
    func displayUsers() async
}

extension WhosWatchingView: WhosWatchingDisplayLogic {
    
    private func fetchUsers() async {
        await interactor?.load()
    }
    
    func displayUsers() {
        // TODO: -
    }
}

struct WhosWatchingView: View {
    
    var interactor: WhosWatchingBusinessLogic?
    var users: WhosWatchingDataStore = WhosWatchingDataStore()
    @State var selectedUser = User.fixture()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                Task { await fetchUsers() }
            }
    }
}

struct WhosWatchingView_Previews: PreviewProvider {
    static var previews: some View {
        WhosWatchingView()
    }
}
