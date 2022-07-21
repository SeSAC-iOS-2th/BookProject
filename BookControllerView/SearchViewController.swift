//
//  SearchViewController.swift
//  BookProject
//
//  Created by 이중원 on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    static let identifier = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "검색 화면"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
    }
    
    @objc func closeButtonClicked() {
        
        self.dismiss(animated: true)
        
    }
    
}
