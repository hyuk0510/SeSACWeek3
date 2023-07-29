//
//  CustomTableViewCell.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"
    
    @IBOutlet var backView: UIView!
    @IBOutlet var checkboxImageView: UIImageView!
    
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    func configureCell(row: ToDo) {        
        let checkboxImage = row.like ? "checkmark.square.fill" : "checkmark.square"
        let buttonImage = row.done ? "star.fill" : "star"
        
        mainTitleLabel.text = row.main
        subTitleLabel.text = row.sub
        
        checkboxImageView.image = UIImage(systemName: checkboxImage)
        likeButton.setImage(UIImage(systemName: buttonImage), for: .normal)
    }
}
