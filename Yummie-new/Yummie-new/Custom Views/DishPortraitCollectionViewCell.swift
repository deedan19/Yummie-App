//
//  DishPortraitCollectionViewCell.swift
//  Yummie-new
//
//  Created by Decagon on 13/06/2021.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishPortraitCollectionViewCell.self)

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup (with dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asURL)
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }

}
