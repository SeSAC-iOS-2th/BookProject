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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(presentButtonClicked))
        
        
    }
    
    @objc func presentButtonClicked() {
        
        let sb = UIStoryboard(name: "Search", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identifier) as! SearchViewController
        let nav = UINavigationController(rootViewController: vc)
        
        nav.modalPresentationStyle = .fullScreen
        
        self.present(nav, animated: true)
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
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "BookDetail", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: BookDetailViewController.identifier) as! BookDetailViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }


}
