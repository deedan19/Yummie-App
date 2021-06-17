//
//  CategoryCollectionViewCell.swift
//  Yummie-new
//
//  Created by Decagon on 13/06/2021.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func setup (with category: DishCategory) {
        categoryLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image?.asURL)
    }
    

}
