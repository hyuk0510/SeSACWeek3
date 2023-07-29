//
//  MovieInfoTableViewCell.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/28.
//

import UIKit

class MovieInfoTableViewCell: UITableViewCell {

    static let identifier = "MovieInfoTableViewCell"
    
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieInfoLabel: UILabel!
    
    @IBOutlet var movieOverViewLabel: UILabel!
    
    func configureCell(row: Movie) {
        movieImageView.image = UIImage(named: row.title)
        movieImageView.contentMode = .scaleAspectFit
        
        movieTitleLabel.text = row.title
        movieTitleLabel.font = .boldSystemFont(ofSize: 20)
        
        movieInfoLabel.text = row.releaseDate + " | \(row.runtime)분 | " + "\(row.rate)점"
        
        movieOverViewLabel.numberOfLines = 5
        movieOverViewLabel.text = row.overview
        movieOverViewLabel.font = .boldSystemFont(ofSize: 15)
    }
}
