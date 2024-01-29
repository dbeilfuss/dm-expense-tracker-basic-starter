//
//  ExpensesViewController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    
    var category: String?
    
    func configureViewController(category: String) {
        self.category = category
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
