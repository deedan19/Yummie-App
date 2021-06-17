//
//  Dish.swift
//  Yummie
//
//  Created by Decagon on 27/05/2021.
//

import Foundation


struct  Dish {
    static   let onlineImageURL = "https://images.unsplash.com/photo-1547656807-9733c2b738c2?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
    let id, name, image, description: String?
    let calories: Int?
    
    var formattedCalories: String {
        return String (format: "\(calories ?? 0) calories")
    }
    
}
