//
//  DynamicPrototypesTableViewController.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/27.
//

import UIKit

class DynamicPrototypesTableViewController: UITableViewController {

    let sectionTitle = ["전체 설정", "개인 설정", "기타"]
    
    let mainSet = ["공지사항", "실험실", "버전 정보"]
    let personalSet = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let etc = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = sectionTitle[section]
        
        return title
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return sectionTitle.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return mainSet.count
        case 1: return personalSet.count
        case 2: return etc.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "dynamicPrototypes")!
        
        let count = indexPath.section
        
        if count == 0 {
            cell.textLabel?.text = mainSet[indexPath.row]
        } else if count == 1 {
            cell.textLabel?.text = personalSet[indexPath.row]
        } else if count == 2 {
            cell.textLabel?.text = etc[indexPath.row]
        }

        cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        
        return cell
    }
}
