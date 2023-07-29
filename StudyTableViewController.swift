//
//  StudyTableViewController.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {

    let studyList = ["변수", "상수", "열거형", "옵셔널 바인딩", "메서드", "프로퍼티"]
    let appleList = ["아이폰", "아이패드", "애플워치", "에어팟"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 60 // 모든 셀이 같은 높이일 때 함수 사용하지 않고 viewDodLoad()에서 적용시켜주기
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //100% 모든 경우의 수를 return 해주어야 함
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "첫 번째 섹션" : "두 번째 섹션"
    }
    
    //1. 셀 갯수 (필수)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? studyList.count : appleList.count
    }
    
    //2. 셀 데이터 및 디자인 처리 (필수)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //identifier에 맞는 셀이 있을 수 있기 때문에 옵셔널로 반환을 해줌 > 해제가 필요!
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = studyList[indexPath.row]
//            cell.detailTextLabel?.text
        } else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
        
        return cell
    }
    
    //3. 셀 높이: 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 사용한다면 비효율적일 수 있음!
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 50
        } else {
            return 100
        }
    }
}
