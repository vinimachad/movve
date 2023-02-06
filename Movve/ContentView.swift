//
//  ContentView.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    @ObservedResults(User.self) var users
    
    var body: some View {
        NavigationView {
            if users.isEmpty {
                CreateUserView()
            } else {
                WhosWatchingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
