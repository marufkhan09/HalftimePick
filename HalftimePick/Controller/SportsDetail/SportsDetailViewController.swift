//
//  SportsDetailViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 22/2/23.
//

import UIKit

class SportsDetailViewController: UIViewController{
  
    
    
    let collectionView = UICollectionView()
    override func viewWillAppear(_ animated: Bool) {

        newsNavBar(SportsDetailViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
        super.viewDidLoad()
    }
    func  initialiseTableView(){
        view.addSubview(collectionView)
        collectionView.register(UINib.init(nibName: "gamelistTableViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(red: 0.11, green: 0.19, blue: 0.32, alpha: 1.00)
        
//        collectionView.rowHeight = UITableView.automaticDimension
//        collectionView.estimatedRowHeight = UITableView.automaticDimension
//        collectionView.separatorColor = .clear
    }
    
    @objc func receivedMsg() {
   print("MSG Received")
   }
    
}

extension SportsDetailViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
