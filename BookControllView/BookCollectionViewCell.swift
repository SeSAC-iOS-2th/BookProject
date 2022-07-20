//
//  BookCollectionViewCell.swift
//  BookProject
//
//  Created by 이중원 on 2022/07/20.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    func configureCell(title: String, rate: Double, imageURL: String) {
        
        titleLabel.numberOfLines = 1
        titleLabel.text = title
        titleLabel.font = .boldSystemFont(ofSize: 20)
        titleLabel.textColor = .white
        
        rateLabel.text = "\(rate)"
        rateLabel.font = .boldSystemFont(ofSize: 10)
        rateLabel.textColor = .white
        
        imageView.image = UIImage(named: imageURL)
    }
    
}
