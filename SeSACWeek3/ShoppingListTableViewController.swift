//
//  ShoppingListTableViewController.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/28.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {

    @IBOutlet var inputTextField: UITextField!
    
    @IBOutlet var addButton: UIButton!
    
    var shoppingList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designInputTextField()
        designAddButton()
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        shoppingList.append(inputTextField.text!)
        
        tableView.reloadData()
        
        inputTextField.text = ""
        
        view.endEditing(true)
    }
    
    @IBAction func enterTextField(_ sender: UITextField) {
        shoppingList.append(inputTextField.text!)
        
        tableView.reloadData()
        
        inputTextField.text = ""
    }
    
    func designInputTextField() {
        inputTextField.placeholder = "무엇을 구매하실 건가요?"
        inputTextField.layer.cornerRadius = 10
        inputTextField.backgroundColor = .systemGray6
    }
    
    func designAddButton() {
        addButton.setTitle("추가", for: .normal)
        addButton.tintColor = .black
        addButton.layer.cornerRadius = 10
        addButton.backgroundColor = .systemGray3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingListCell")!
        
        cell.textLabel?.text = shoppingList[indexPath.row]
        
        cell.backgroundColor = .systemGray6
        
        cell.imageView?.image = UIImage(systemName: "checkmark.square.fill")
        
        cell.tintColor = .black
        
        cell.accessoryView = UIImageView(image: UIImage(systemName: "star.fill"))
        
        return cell
    }
}
