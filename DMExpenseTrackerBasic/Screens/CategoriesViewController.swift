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
    var selectedCategory = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeExpenseData()
        initializeTable()
    }
    
    func initializeExpenseData() {
        categories = dataController.getCategories()
        categories = categories.sorted()
        categories.removeFirst()
    }
    
    func initializeTable() {
        categoriesTableView.dataSource = self
        categoriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "budgetCell")
        categoriesTableView.delegate = self
    }
    
//    func configureTableView() {
//        
//    }
    
}


//MARK: - Extension:  TableViewDataSource

extension CategoriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let categoryName = categories[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.categoryReuseID, for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = categoryName
        cell.contentConfiguration = content
        
        return cell
    }
}

//MARK: - Extension: TableView Delegate

extension CategoriesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCategory = categories[indexPath.row]
        performSegue(withIdentifier: Segues.categoriesToExpenses, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ExpensesViewController
        destinationVC.configureViewController(category: selectedCategory)
    }
}
