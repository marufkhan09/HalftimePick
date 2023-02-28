//
//  SportsDetailViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 22/2/23.
//

import UIKit

class SportsDetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SportsCollectionViewCell.identifier, for: indexPath) as? SportsCollectionViewCell else {
            fatalError()
        }
        cell.configure(with: UIImage(named: "screenSplash"))
        return cell
    }
    
    private var collectionView  : UICollectionView?
    override func viewWillAppear(_ animated: Bool) {
        newsNavBar(SportsDetailViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
        view.backgroundColor = .white
        
    }
    
    override func viewDidLoad() {
        setupCollectionView()
        
        super.viewDidLoad()
    }
    
    func setupCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.size.width/3, height: view.frame.size.height/4)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
        collectionView?.backgroundColor = .orange
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(SportsCollectionViewCell.self, forCellWithReuseIdentifier: SportsCollectionViewCell.identifier)
        guard let collectionView = collectionView else {
            return
        }
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
    
    @objc func receivedMsg() {
        print("MSG Received")
    }
    
}
