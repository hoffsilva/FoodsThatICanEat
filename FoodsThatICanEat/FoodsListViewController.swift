//
//  FoodsListViewController.swift
//  FoodsThatICanEat
//
//  Created by Hoff Henry Pereira da Silva on 21/10/2018.
//  Copyright © 2018 Hoff Henry Pereira da Silva. All rights reserved.
//

import UIKit

class FoodsListViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    var foodsController = ListFoodController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodsController.listFoodDelegate = self
        foodsController.arrayOfFoods = foodsController.dataArrayOfFoods
        configureSearchBar()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodsController.arrayOfFoods.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    func configureSearchBar() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Jobs keywords separated by comma."
        if #available(iOS 11.0, *) {
            navigationItem.searchController = searchController
        } else {
            // Fallback on earlier versions
        }
        definesPresentationContext = true
    }

}

extension FoodsListViewController: ListFoodDelegate {
    func filteredFood() {
        tableView.reloadData()
    }
}

extension FoodsListViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        foodsController.arrayOfFoods.removeAll()
        tableView.reloadData()
        foodsController.getFoodBy(parameter: searchController.searchBar.text!)
    }
}
