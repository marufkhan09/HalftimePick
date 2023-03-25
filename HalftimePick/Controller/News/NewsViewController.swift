//
//  NewsViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//

import UIKit


class NewsViewController : UIViewController {
    var myCollectionView:UICollectionView?
    private var newscollectionView  : UICollectionView?
    var livescore : Livescore? {
        didSet {
            team1Label.text = livescore?.team1
            team2Label.text = livescore?.team2
            team1Image.image = livescore?.team1img
            team2Image.image = livescore?.team2img
            team1score.text = livescore?.team1Score
            team2score.text = livescore?.team2Score
            score.text = livescore?.liveScore
            upteam1Label.text = livescore?.upcomingTeam1
            upteam2Label.text = livescore?.upcomingTeam2
            upteam1Image.image = livescore?.upcomingTeam1img
            upteam2Image.image = livescore?.upcomingTeam2img
            upcominggame.text = livescore?.upcomingGame
            upcominggametime.text = livescore?.upcomingMTime
 
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        newsNavBar(SportsDetailViewController(), leftAcion: #selector(receivedMsg), rightAction: #selector(receivedMsg))
        view.backgroundColor = .black
        livescore =  Livescore(team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1Score: "1", team2Score: "6", liveScore: "J.Randle (NYK):35\n PTS,12,REB,8AST ",upcomingTeam1: "IND Colts",upcomingTeam2: "NY Giants",upcomingTeam1img: UIImage(named: "Indianapolis_Colts_logo 1")!,upcomingTeam2img: UIImage(named: "new-york-giants-logo-transparent 1")!,upcomingMTime: "7 pm",upcomingGame: "Today")
        
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
        self.view.setNeedsLayout()
        view.addSubview(myCollectionView ?? UICollectionView())
        view.addSubview(horizontaldivider)
        view.addSubview(cv)
        horizontaldivider.anchor(top: myCollectionView!.bottomAnchor, left: myCollectionView?.leftAnchor, bottom: nil, right: myCollectionView?.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0.5, enableInsets: false)
        
        view.addSubview(newslistview)
        view.addSubview(nView)
        
        cv.anchor(top: horizontaldivider.bottomAnchor, left: horizontaldivider.leftAnchor, bottom: nil, right: horizontaldivider.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width:0, height: 80, enableInsets: false)
        setupLiveGameView()
       
        nView.anchor(top: cv.bottomAnchor, left: cv.leftAnchor, bottom: nil, right: cv.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width:0, height: 500, enableInsets: false)

        
        self.view = view
    }


    private lazy var cv: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        

        return view
    }()
    let nView: newsListView = {
        let view = newsListView()
        return view
    }()
    private lazy var newslistview: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        

        return view
    }()
    private lazy var divider: UIView = {
        let view = UIView()
        view.backgroundColor = .gray

        return view
    }()
    private lazy var horizontaldivider: UIView = {
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
    private let upteam1Label : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let upteam2Label : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let upteam1Image : UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleToFill
        imgView.clipsToBounds = true
        return imgView
    }()
    private let upteam2Image : UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleToFill
        imgView.clipsToBounds = true
        return imgView
    }()
    private let team1score : UILabel = {
        let lbl = UILabel()
       
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team2score : UILabel = {
        let lbl = UILabel()
       
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()

    private let liveorhighlight : UILabel = {
        let lbl = UILabel()
        lbl.text = "Live"
        lbl.textColor = .systemGreen
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .right
        return lbl
    }()
    private let score : UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 2
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .center
        return lbl
    }()
    private let upcominggame : UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 2
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    private let upcominggametime : UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 2
        lbl.textColor = .systemBlue
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
        cv.addSubview(team1score)
        cv.addSubview(team2score)
        cv.addSubview(liveorhighlight)
        cv.addSubview(score)
        cv.addSubview(divider)
        cv.addSubview(upteam1Image)
        cv.addSubview(upteam2Image)
        cv.addSubview(upteam1Label)
        cv.addSubview(upteam2Label)
        cv.addSubview(upcominggame)
        cv.addSubview(upcominggametime)
        
        
        
//        cv.addSubview(team2Label)
        team1Image.anchor(top: cv.topAnchor, left: cv.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 15, height: 15, enableInsets: false)
        team2Image.anchor(top: nil, left: cv.leftAnchor, bottom: cv.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 15, paddingRight: 0, width: 15, height: 15, enableInsets: false)
        team1Label.anchor(top: cv.topAnchor, left: team1Image.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: cv.frame.width/6, height: 0, enableInsets: false)
        team2Label.anchor(top: nil, left: team2Image.rightAnchor, bottom: cv.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 15, paddingRight: 0, width: cv.frame.width/6, height: 0, enableInsets: false)
        team1score.anchor(top: cv.topAnchor, left: team1Label.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: cv.frame.width/10, height: 0, enableInsets: false)
        team2score.anchor(top: nil, left: team2Label.rightAnchor, bottom: cv.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 15, paddingRight: 0, width: cv.frame.width/10, height: 0, enableInsets: false)
        liveorhighlight.anchor(top: cv.topAnchor, left: team1score.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: cv.frame.width/6, height: 0, enableInsets: false)
        score.anchor(top: liveorhighlight.bottomAnchor, left: team2score.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: cv.frame.width/6, height: 0, enableInsets: false)
        divider.anchor(top: cv.topAnchor, left: score.rightAnchor, bottom: cv.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 2, paddingBottom: 0, paddingRight: 0, width: 0.5, height: 0, enableInsets: false)
        upteam1Image.anchor(top: cv.topAnchor, left: divider.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 15, height: 15, enableInsets: false)
        upteam2Image.anchor(top: nil, left: divider.rightAnchor, bottom: cv.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 15, paddingRight: 0, width: 15, height: 15, enableInsets: false)
        upteam1Label.anchor(top: cv.topAnchor, left: upteam1Image.rightAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: cv.frame.width * 0.3, height: 0, enableInsets: false)
        upteam2Label.anchor(top: nil, left: upteam2Image.rightAnchor, bottom: cv.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 15, paddingRight: 0, width: cv.frame.width * 0.3, height: 0, enableInsets: false)
        upcominggame.anchor(top: cv.topAnchor, left: nil, bottom: nil, right: cv.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: cv.frame.width/5, height: 0, enableInsets: false)
        upcominggametime.anchor(top: nil, left: nil, bottom: cv.bottomAnchor, right: cv.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 15, paddingRight: 10, width: cv.frame.width/6, height: 0, enableInsets: false)

        
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
extension NewsViewController {
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
 
    func setupNewsCollectionView(){
        newscollectionView = UICollectionView(frame: .zero,collectionViewLayout: NewsViewController.createLayout())
        newscollectionView?.backgroundColor = .black
        newscollectionView?.delegate = self
        newscollectionView?.dataSource = self
        newscollectionView?.register(sportsCell.self, forCellWithReuseIdentifier: sportsCell.identifier)
        guard let collectionView = newscollectionView else {
            return
        }
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
    
    
    
}







