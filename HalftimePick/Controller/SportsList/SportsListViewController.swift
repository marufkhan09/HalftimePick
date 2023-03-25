//
//  SportsListViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 22/2/23.
//

import UIKit

class SportsListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: sportsCell.identifier, for: indexPath) as? sportsCell else {
            fatalError()
        }
        cell.configure(with: UIImage(named: "playdet"))
        //cell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let newViewController = SportsDetailViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
        // do stuff with image, or with other data that you need
    }
    
    private var collectionView  : UICollectionView?
    override func viewWillAppear(_ animated: Bool) {
        newsNavBar(SportsListViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
       // view.backgroundColor = .white
        
        
    }
    
    override func viewDidLoad() {
        setupCollectionView()
        super.viewDidLoad()
    }
    
    func setupCollectionView(){
        collectionView = UICollectionView(frame: .zero,collectionViewLayout: SportsListViewController.createLayout())
        collectionView?.backgroundColor = .black
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(sportsCell.self, forCellWithReuseIdentifier: sportsCell.identifier)
        guard let collectionView = collectionView else {
            return
        }
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
    
    @objc func receivedMsg() {
        print("MSG Received")
    }
    
    
    static func createLayout() -> UICollectionViewCompositionalLayout{
        //item
        let fitem = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 1)
        let item = CompositionalLayout.createItem(width: .fractionalWidth(0.5), height: .fractionalHeight(1), spacing: 1)
        //margin
        let verticalGroup = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(0.5), height: .fractionalHeight(1), item: fitem, count: 2)
        //group
        let horizontalGroup = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .absolute(200), items: [item,verticalGroup])
        let mainItem = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .absolute(200), spacing: 1)
        let mainGroup =  CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(1), height: .absolute(400), items: [mainItem,horizontalGroup])
        //section
        let section = NSCollectionLayoutSection(group: mainGroup)
        //return
        return UICollectionViewCompositionalLayout(section: section)
    }
}
