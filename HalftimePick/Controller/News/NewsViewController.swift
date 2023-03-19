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
      //view.backgroundColor = .white
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 40, height: 40)
      layout.scrollDirection = .horizontal
      
      myCollectionView = UICollectionView(frame:  CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height * 0.2) , collectionViewLayout: layout)
      myCollectionView?.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
      myCollectionView!.showsHorizontalScrollIndicator = false
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
//      
//      
//      let gradientLayer = CAGradientLayer()
//      gradientLayer.frame = view.bounds
//      gradientLayer.colors = [UIColor.red.cgColor, UIColor.red.cgColor, UIColor.blue.cgColor, UIColor.blue.cgColor]
//      gradientLayer.locations = [NSNumber(value: 0.0), NSNumber(value: 0.5), NSNumber(value: 0.5), NSNumber(value: 1.0)]
//      view.layer.addSublayer(gradientLayer)

      self.view.setNeedsLayout()
        view.addSubview(myCollectionView ?? UICollectionView())

        self.view = view
    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 500), collectionViewLayout: UICollectionViewFlowLayout())
//        // add the collection view to your view hierarchy here
//    }



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
        return 17 // How many cells to display
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as! StoryCollectionViewCell
        myCell.backgroundColor = UIColor.black
        myCell.configure(with: UIImage(named: "nfl"))
        return myCell
    }
}



extension NewsViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}

