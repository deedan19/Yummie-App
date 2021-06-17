//
//  String+Extension.swift
//  Yummie
//
//  Created by Decagon on 27/05/2021.
//

import Foundation

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}
