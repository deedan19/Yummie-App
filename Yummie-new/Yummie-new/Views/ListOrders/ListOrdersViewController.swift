//
//  ListOrdersViewController.swift
//  Yummie-new
//
//  Created by Decagon on 14/06/2021.
//

import UIKit

class ListOrdersViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    
    var orders: [Order] = [
        .init(id: "id1", name: "Danny Smart", dish: .init(id: "id3", name: "Ewedu Soup", image: Dish.onlineImageURL, description: "This is the best food, This is the best food", calories: 23)),
        .init(id: "id1", name: "Danny1 Smart", dish: .init(id: "id3", name: "Ewedu Soup", image: Dish.onlineImageURL, description: "This is the best food, This is the best food", calories: 23)),
        .init(id: "id1", name: "Danny2 Smart", dish: .init(id: "id3", name: "Ewedu Soup", image: Dish.onlineImageURL, description: "This is the best food, This is the best food", calories: 23))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
  
    }
    
    private func registerCell () {
        table.register(UINib(nibName: DishTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishTableViewCell.identifier)
    }
    
    
    
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishTableViewCell.identifier) as! DishTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instatiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
