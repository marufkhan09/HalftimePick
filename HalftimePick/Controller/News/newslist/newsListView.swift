//
//  newsListView.swift
//  HalftimePick
//
//  Created by Maruf Khan on 23/3/23.
//

import UIKit

class newsListView: UIView,  UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCollectionViewCell.identifier, for: indexPath) as? NewsCollectionViewCell else {
            fatalError()
        }
        cell.configure(with: UIImage(named: "playdet"))
        //cell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        // do stuff with image, or with other data that you need
    }
    
    var newscollectionView  : UICollectionView?
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        newscollectionView?.delegate = self
        newscollectionView?.dataSource = self
        setupCollectionView()
        
        
    }
    func setupCollectionView(){
        newscollectionView = UICollectionView(frame: .zero,collectionViewLayout: SportsListViewController.createLayout())
        newscollectionView?.backgroundColor = .black
        newscollectionView?.delegate = self
        newscollectionView?.dataSource = self
        newscollectionView?.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: NewsCollectionViewCell.identifier)
        guard let collectionView = newscollectionView else {
            return
        }
        addSubview(collectionView)
        collectionView.frame = bounds
    }
    
}
