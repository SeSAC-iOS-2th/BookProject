//
//  BookCollectionViewController.swift
//  BookProject
//
//  Created by 이중원 on 2022/07/20.
//

import UIKit

class BookCollectionViewController: UICollectionViewController {

    
    var movieList = MovieInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        layout.itemSize = CGSize(width: (width / 2), height: (width / 2))
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        cell.backgroundColor = .purple
        cell.layer.cornerRadius = 16
        
        cell.configureCell(title: movieList.movie[indexPath.item].title, rate: movieList.movie[indexPath.item].rate, imageURL: movieList.movie[indexPath.item].imageURL)
        
        
        return cell
    }


}
