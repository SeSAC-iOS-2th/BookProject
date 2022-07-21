//
//  BookDetailViewController.swift
//  BookProject
//
//  Created by 이중원 on 2022/07/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    static let identifier = "BookDetailViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func pushButtonClicked(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "BookWebLink", bundle: nil)
        
        let vc = sb.instantiateViewController(withIdentifier: BookWebLinkViewController.identifier) as! BookWebLinkViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
