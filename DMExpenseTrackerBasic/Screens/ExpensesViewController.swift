//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    
    @IBOutlet weak var expensesTableView: UITableView!
    
    var dataController = DataController()
    
    var category: String = ""
    var expenses: [Expense] = []
    
    func configureViewController(category categorySelected: String) {
        self.category = categorySelected
        expenses = dataController.getExpenses(category)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTable()
    }
    
    func initializeTable() {
        expensesTableView.dataSource = self
        expensesTableView.register(UINib(nibName: "ExpenseCell", bundle: nil), forCellReuseIdentifier: Constants.expenseReuseID)
    }
}

//MARK: - Extension: TableViewDatasource

extension ExpensesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let expense = expenses[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.expenseReuseID, for: indexPath) as! ExpenseCell
        
        cell.configureCell(title: expense.title, amount: expense.amount)
        return cell
        
    }
    
}
