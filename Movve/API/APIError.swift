//
//  APIError.swift
//  Movve
//
//  Created by Vinicius Galhardo Machado on 22/01/23.
//

import Foundation

enum APIError: Error {
    case connectionError(Data)
    case apiError
    case mappingError
}
