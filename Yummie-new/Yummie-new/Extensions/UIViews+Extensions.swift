//
//  UIViews+Extensions.swift
//  Yummie-new
//
//  Created by Decagon on 13/06/2021.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
