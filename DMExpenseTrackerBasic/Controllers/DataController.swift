//
//  DataController.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 9/2/23.
//

import Foundation

struct DataController {
    
    var expenseList = [
        Expense(title: "Amazon", category: "Shopping", amount: 59.99),
        Expense(title: "Apple Music", category: "Entertainment", amount: 9.99),
        Expense(title: "Movie", category: "Entertainment", amount: 37.98),
        Expense(title: "Amazon", category: "Shopping", amount: 45.99),
        Expense(title: "Nike Shoes", category: "Shoes", amount: 120.67),
        Expense(title: "Tithe", category: "Tithe", amount: 200),
        Expense(title: "Home Depot", category: "Home", amount: 75.1),
        Expense(title: "Monthly Rent", category: "Housing", amount: 1000.0),
        Expense(title: "Cab Ride", category: "Transportation", amount: 20.0),
        Expense(title: "Coffee Shop", category: "Food", amount: 4.5),
        Expense(title: "Uber Ride", category: "Transportation", amount: 20.76),
        Expense(title: "Gas Fill Up", category: "Transportation", amount: 37.52),
        Expense(title: "Supermarket", category: "Food", amount: 70.0),
        Expense(title: "Uber", category: "Transportation", amount: 19.35),
        Expense(title: "Amazon", category: "Shopping", amount: 49.99),
        Expense(title: "Gas", category: "Transportation", amount: 80.11),
        Expense(title: "Monthly Rent", category: "Housing", amount: 1500.0),
        Expense(title: "Amazon", category: "Shopping", amount: 50.0),
        Expense(title: "Netflix", category: "Entertainment", amount: 14.99),
        Expense(title: "Amazon", category: "Shopping", amount: 75.0),
        Expense(title: "Haircut", category: "Personal Care", amount: 30.0),
        Expense(title: "Grocery Store", category: "Food", amount: 150.0),
        Expense(title: "Tithe", category: "Tithe", amount: 200),
        Expense(title: "Gym", category: "Health", amount: 40.0),
        Expense(title: "Starbucks", category: "Food", amount: 5.4),
        Expense(title: "Pharmacy", category: "Health", amount: 43.0),
        Expense(title: "Uber", category: "Transportation", amount: 45.0),
        Expense(title: "Snowboarding Lessons", category: "Entertainment", amount: 75.0),
        Expense(title: "Ski Trip", category: "Travel", amount: 102.52),
        Expense(title: "Spotify Subscription", category: "Entertainment", amount: 9.99),
        Expense(title: "Electric Bill", category: "Utilities", amount: 60.0),
        Expense(title: "Water Bill", category: "Utilities", amount: 30.0),
        Expense(title: "Textbooks", category: "Education", amount: 200.0),
        Expense(title: "Pet Food", category: "Pets", amount: 45.0),
        Expense(title: "Veterinarian Visit", category: "Pets", amount: 120.0),
        Expense(title: "Office Supplies", category: "Shopping", amount: 23.45),
        Expense(title: "Dinner Out", category: "Food", amount: 85.0),
        Expense(title: "Yoga Class", category: "Health", amount: 15.0),
        Expense(title: "Mobile Phone Bill", category: "Utilities", amount: 90.0),
        Expense(title: "Car Insurance", category: "Transportation", amount: 150.0),
        Expense(title: "Birthday Gift", category: "Shopping", amount: 75.0),
        Expense(title: "Online Course", category: "Education", amount: 99.0),
        Expense(title: "Train Ticket", category: "Travel", amount: 30.0),
        Expense(title: "Gardening Supplies", category: "Home", amount: 50.0),
        Expense(title: "Movie Streaming Service", category: "Entertainment", amount: 12.99),
        Expense(title: "Charity Donation", category: "Donations", amount: 50.0),
        Expense(title: "Bike Repair", category: "Transportation", amount: 25.0),
        Expense(title: "Kitchen Appliance", category: "Home", amount: 150.0),
        Expense(title: "Language Learning Software", category: "Education", amount: 20.0),
        Expense(title: "Annual Zoo Membership", category: "Entertainment", amount: 100.0),
        Expense(title: "Guitar Lessons", category: "Education", amount: 220.0),
        Expense(title: "Laptop Repair", category: "Electronics", amount: 125.0),
        Expense(title: "Running Shoes", category: "Hobbies", amount: 110.0),
        Expense(title: "Camping Gear", category: "Hobbies", amount: 200.0),
        Expense(title: "Gourmet Cheese", category: "Food", amount: 30.0),
        Expense(title: "Art Supplies", category: "Hobbies", amount: 45.0),
        Expense(title: "Museum Admission", category: "Entertainment", amount: 25.0),
        Expense(title: "Annual National Park Pass", category: "Travel", amount: 80.0),
        Expense(title: "Craft Beer", category: "Food", amount: 20.0),
        Expense(title: "Yoga Mat", category: "Health", amount: 35.0),
        Expense(title: "Concert Tickets", category: "Entertainment", amount: 150.0),
        Expense(title: "Professional Development Seminar", category: "Education", amount: 300.0),
        Expense(title: "House Cleaning Service", category: "Home", amount: 90.0),
        Expense(title: "Gardening Workshop", category: "Hobbies", amount: 50.0),
        Expense(title: "Smart Thermostat", category: "Electronics", amount: 250.0),
        Expense(title: "Board Games", category: "Hobbies", amount: 60.0),
        Expense(title: "Aquarium Visit", category: "Entertainment", amount: 60.0),
        Expense(title: "Sushi Dinner", category: "Food", amount: 100.0),
        Expense(title: "Custom T-shirt Printing", category: "Shopping", amount: 75.0)
    ]
    
    func getExpenses(_ categorySelected: String) -> [Expense] {
        let filteredExpenseList: [Expense] = expenseList.filter { $0.category == categorySelected }
        return filteredExpenseList
    }
    
    func getCategories() -> [String] {
        var categoryList = [String()]
        for expense in expenseList {
            if categoryList.contains(expense.category) {
            } else {
                categoryList.append(expense.category)
            }
        }
        return categoryList
    }
    
}
