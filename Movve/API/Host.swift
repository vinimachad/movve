//
//  Host.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

enum Host {
    
    static func baseURL(path: String) -> URL {
        guard let url = URL(string: "https://imdb-top-100-movies.p.rapidapi.com/\(path)") else { fatalError("URL não suportada") }
        return url
    }
}
