//
//  NewsViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//

import UIKit


class NewsViewController : UIViewController {
    var myCollectionView:UICollectionView?
    
    override func viewWillAppear(_ animated: Bool) {
        newsNavBar(SportsDetailViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
        view.backgroundColor = .white
        
    }
  func  setupCollectionView(){
        let view = UIView()
        view.backgroundColor = .white
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 50, height: 60)
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView?.backgroundColor = UIColor.white
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        view.addSubview(myCollectionView ?? UICollectionView())

        self.view = view
    }


    @objc func receivedMsg() {
        print("MSG Received")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
}

extension NewsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7 // How many cells to display
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! StoryCollectionViewCell
        myCell.backgroundColor = UIColor.blue
        myCell.setup(imagestring: "demopic")
        return myCell
    }
}



extension NewsViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}

