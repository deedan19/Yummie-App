//
//  DishDetailViewController.swift
//  Yummie-new
//
//  Created by Decagon on 14/06/2021.
//

import UIKit

class DishDetailViewController: UIViewController {
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()

        // Do any additional setup after loading the view.
    }
    
    private func populateView () {
        dishImageView.kf.setImage(with: dish.image?.asURL)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formattedCalories
    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
    }
    
    
}
