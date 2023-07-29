//
//  CustomTableViewController.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/28.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    let todo = ToDoInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        
        let row = todo.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
