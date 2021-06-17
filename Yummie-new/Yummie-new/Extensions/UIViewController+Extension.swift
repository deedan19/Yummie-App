//
//  UIViewController+Extension.swift
//  Yummie-new
//
//  Created by Decagon on 14/06/2021.
//

import UIKit

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instatiate () -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}
