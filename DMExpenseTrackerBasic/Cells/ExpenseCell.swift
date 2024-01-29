//
//  ExpenseCell.swift
//  DMExpenseTrackerBasic
//
//  Created by Daniel Beilfuss on 1/29/24.
//

import UIKit

class ExpenseCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    func configureCell(title: String, amount: Double) {
        titleLabel.text = title
        amountLabel.text = String(amount)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
