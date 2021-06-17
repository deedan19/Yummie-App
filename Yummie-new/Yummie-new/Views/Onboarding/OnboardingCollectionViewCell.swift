//
//  OnboardingCollectionViewCell.swift
//  Yummie-new
//
//  Created by Decagon on 13/06/2021.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)

    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func  setUp(_ slides: OnboardingSlides) {
        slideImageView.image = slides.image
        slideTitleLabel.text = slides.title
        slideDescriptionLabel.text = slides.description
    }

}
