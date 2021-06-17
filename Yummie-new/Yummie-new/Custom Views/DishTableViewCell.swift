//
//  DishTableViewCell.swift
//  Yummie-new
//
//  Created by Decagon on 14/06/2021.
//

import UIKit

class DishTableViewCell: UITableViewCell {
    static let identifier = "DishTableViewCell"
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup (dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asURL)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        
    }
    
    func setup (order: Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asURL)
        titleLabel.text = order.dish?.name
        descriptionLabel.text = order.name
        
    }
}
