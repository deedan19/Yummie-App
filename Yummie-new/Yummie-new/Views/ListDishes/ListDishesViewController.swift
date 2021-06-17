//
//  ListDishesViewController.swift
//  Yummie-new
//
//  Created by Decagon on 14/06/2021.
//

import UIKit

class ListDishesViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    var category: DishCategory!
    
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", image: Dish.onlineImageURL, description: "This is the best food", calories: 23),
        .init(id: "id2", name: "Akamu", image: Dish.onlineImageURL, description: "This is the best food, Do any additional setup after loading the view. Do any additional setup after loading the view. This is the best food", calories: 23),
        .init(id: "id3", name: "Ewedu Soup", image: Dish.onlineImageURL, description: "This is the best food, This is the best food", calories: 23)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registerCell()
    }
    
    private func registerCell () {
        table.register(UINib(nibName: DishTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishTableViewCell.identifier)
    }
    

}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishTableViewCell.identifier) as! DishTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instatiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
