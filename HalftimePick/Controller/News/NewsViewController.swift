//
//  NewsViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//

import UIKit


class NewsViewController : UIViewController {
    var myCollectionView:UICollectionView?
   // var livescore : [Livescore]  = [Livescore]()


    
    var livescore : Livescore? {
        didSet {
            team1Label.text = livescore?.team1
            team2Label.text = livescore?.team2
            team1Image.image = livescore?.team1img
            team2Image.image = livescore?.team2img
            team1Label.text = livescore?.team1
            team2Label.text = livescore?.team2
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        newsNavBar(SportsDetailViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
        view.backgroundColor = .black
        livescore =  Livescore(team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1Score: "1", team2Score: "6", liveScore: "J.Randle (NYK):35\n PTS,12,REB,8AST ")
        
    }
    func  setupCollectionView(){
        let view = UIView()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 40, height: 60)
        layout.scrollDirection = .horizontal
        
        myCollectionView = UICollectionView(frame:  CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height * 0.25) , collectionViewLayout: layout)
        myCollectionView?.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        myCollectionView!.showsHorizontalScrollIndicator = false
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        myCollectionView?.backgroundColor = .black
        //
        //      5
        //      let gradientLayer = CAGradientLayer()
        //      gradientLayer.frame = view.bounds
        //      gradientLayer.colors = [UIColor.red.cgColor, UIColor.red.cgColor, UIColor.blue.cgColor, UIColor.blue.cgColor]
        //      gradientLayer.locations = [NSNumber(value: 0.0), NSNumber(value: 0.5), NSNumber(value: 0.5), NSNumber(value: 1.0)]
        //      view.layer.addSublayer(gradientLayer)
        
        self.view.setNeedsLayout()
        view.addSubview(myCollectionView ?? UICollectionView())
        view.addSubview(cv)
        
        cv.anchor(top: myCollectionView!.bottomAnchor, left: myCollectionView?.leftAnchor, bottom: nil, right: myCollectionView?.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width:0, height: 80, enableInsets: false)
        setupLiveGameView()
        self.view = view
    }

    private lazy var cv: UIView = {
        let view = UIView()
        view.backgroundColor = .gray

        return view
    }()
    private let team1Label : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let team2Label : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let team1Image : UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleToFill
        imgView.clipsToBounds = true
        return imgView
    }()
    private let team2Image : UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleToFill
        imgView.clipsToBounds = true
        return imgView
    }()
    private let moneyLine : UILabel = {
        let lbl = UILabel()
        lbl.text = "Money Line"
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    
     private let spread : UILabel = {
         let lbl = UILabel()
         lbl.text = "Spread"
         lbl.textColor = .white
         lbl.font = UIFont.boldSystemFont(ofSize: 12)
         lbl.textAlignment = .center
         return lbl
     }()
    private let total : UILabel = {
        let lbl = UILabel()
        lbl.text = "Total"
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    
    func setupLiveGameView(){
        cv.addSubview(team1Image)
        team1Image.image = UIImage(named: "nfl")
        cv.addSubview(team2Image)
        cv.addSubview(team1Label)
        cv.addSubview(team2Label)
        
//        cv.addSubview(team2Label)
        team1Image.anchor(top: cv.topAnchor, left: cv.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 15, height: 15, enableInsets: false)
        team2Image.anchor(top: team1Image.bottomAnchor, left: cv.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 15, paddingRight: 0, width: 15, height: 15, enableInsets: false)
        team1Label.anchor(top: cv.topAnchor, left: team1Image.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: cv.frame.width/6, height: 0, enableInsets: false)
        team2Label.anchor(top: team1Label.bottomAnchor, left: team2Image.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: cv.frame.width/6, height: 0, enableInsets: false)
        

        
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
        return 10 // How many cells to display
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as! StoryCollectionViewCell
        myCell.configure(with: UIImage(named: "nfl"))
        return myCell
    }
}


extension NewsViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}



