//
//  NewsViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//

import UIKit

class NewsViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        newsNavBar(SportsDetailViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
        view.backgroundColor = .black
        
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    }
    
    @objc func receivedMsg() {
        print("MSG Received")
    }
    

}
