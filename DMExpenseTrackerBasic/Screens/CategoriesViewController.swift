//
//  CategoriesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var categoriesTableView: UITableView!
    
    var dataController = DataController()
    
    var categories: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeExpenseData()
        categoriesTableView.dataSource = self
        categoriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "budgetCell")
    }
    
    
    func initializeExpenseData() {
        categories = dataController.getCategories()
        categories = categories.sorted()
        categories.removeFirst()
    }
    
    func configureTableView() {
        
    }
    
}


//MARK: - Extension:  ExpensesViewController

extension CategoriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.categoryReuseID, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = categories[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    
}
