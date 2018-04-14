//
//  MoviesTableViewCell.swift
//  Movies
//
//  Created by Farid Qanbarov on 4/14/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        setupLayout()
//        addSubview(movieTitle)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    let movieTitle : UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    func setupLayout() {
//        NSLayoutConstraint.activate([
//                movieTitle.topAnchor.constraint(equalTo: topAnchor, constant: 15),
//                movieTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
//                movieTitle.trailingAnchor.constraint(equalTo: trailingAnchor)
//            ])
//    }

}
