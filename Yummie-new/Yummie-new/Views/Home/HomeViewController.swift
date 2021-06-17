//
//  HomeViewController.swift
//  Yummie-new
//
//  Created by Decagon on 13/06/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
  
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    @IBOutlet weak var specialCollectionView: UICollectionView!

    var category: [DishCategory] = [
        .init(id: "id1", name: "African Dish", image: DishCategory.onlineImageURL),
        .init(id: "id2", name: "African Dish 2", image: DishCategory.onlineImageURL),
        .init(id: "id3", name: "African Dish 3", image: DishCategory.onlineImageURL),
        .init(id: "id4", name: "African Dish 4", image: DishCategory.onlineImageURL),
        .init(id: "id5", name: "African Dish 5", image: DishCategory.onlineImageURL)
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Garri", image: Dish.onlineImageURL, description: "This is the best food", calories: 23),
        .init(id: "id2", name: "Rice", image: Dish.onlineImageURL, description: "This is the best food, This is the best food", calories: 23),
        .init(id: "id3", name: "Indomie", image: Dish.onlineImageURL, description: "This is the best food, This is the best food", calories: 23)
    ]
    
    var specials: [Dish] = [
        .init(id: "id2", name: "Garri and Beans", image: Dish.onlineImageURL, description: "This is the best food This is the best food This is the best food This is the best food This is the best food", calories: 23),
        .init(id: "id3", name: "Garri and RICE", image: Dish.onlineImageURL, description: "This is the best food", calories: 23)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkService.shared.myFirstRequest()
        registerCells()
        
//        let service = NetworkService()
//        let request = service.createRequest(route: .temp, method: .get, paramenters: ["danny":"smart", "chuks":"dennis"])
//        print(request?.url)
//        print("The body is: \(request?.httpBody)")

    }
    
    private func registerCells  () {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return category.count
        case popularCollectionView:
            return populars.count
        case specialCollectionView:
            return specials.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell
            cell?.setup(with: category[indexPath.row])
            return cell ?? UICollectionViewCell()
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as? DishPortraitCollectionViewCell
            cell?.setup(with: populars[indexPath.row])
            return cell ?? UICollectionViewCell()
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as? DishLandscapeCollectionViewCell
            cell?.setup(with: specials[indexPath.row])
            cell?.backgroundColor = .white
            return cell ?? UICollectionViewCell()
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            let controller = ListDishesViewController.instatiate()
            controller.category = category[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        } else
        {
            let controller = DishDetailViewController.instatiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row]: specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
}
