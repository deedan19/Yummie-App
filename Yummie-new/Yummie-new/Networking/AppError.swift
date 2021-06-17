//
//  AppError.swift
//  Yummie-new
//
//  Created by Decagon on 15/06/2021.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidURL
    case serverError (String)
    
    var errorDescription: String{
        switch self {
     
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "What the heck is going on?"
        case .invalidURL:
            return "Abeg run me valid url"
        case .serverError(let error):
            return "Server error: \(error)"
        }
    }
}
