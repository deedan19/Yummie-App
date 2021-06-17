//
//  Route.swift
//  Yummie-new
//
//  Created by Decagon on 14/06/2021.
//

import Foundation

enum Route {
    static let baseUrl = "https://yummie.glitch.me"
    
    case temp
    
    var description: String {
        switch self {
        case .temp:
            return "/dish-categories"
        }
    }
    

}
