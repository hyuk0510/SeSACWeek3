//
//  MovieInfoTableViewController.swift
//  SeSACWeek3
//
//  Created by 선상혁 on 2023/07/28.
//

import UIKit

class MovieInfoTableViewController: UITableViewController {
    
    let movieInfo = MovieInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 200
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieInfo.movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieInfoTableViewCell.identifier) as! MovieInfoTableViewCell
        
        let row = movieInfo.movie[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
    
}
