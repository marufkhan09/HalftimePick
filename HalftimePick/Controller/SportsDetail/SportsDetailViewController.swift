//
//  SportsDetailViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 5/3/23.
//

import UIKit

class SportsDetailViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        //view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.showsVerticalScrollIndicator = true
        view.isDirectionalLockEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let contentview : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let topview : UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let profileSectionTopview : newsPostersDetail = {
        let view = newsPostersDetail()
        view.newsTitle.text = "Leo John"
        view.newsPostTime.text = "Post . 5hr ago"
        view.profileImage.image = UIImage(named: "demopic")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let titlelabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "asdadsda"
        label.textColor = .white
        label.font = UIFont(name: "AppleSDGothicNeo", size: 40)
        return label
    }()
    let sublabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "asdadsda"
        label.textColor = .white
        return label
    }()
    
    let newsImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "demopic")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    let desclabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda asdadsda"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    func configureUI(){
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)])
        
        scrollView.addSubview(contentview)
        NSLayoutConstraint.activate([
            contentview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contentview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            contentview.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            contentview.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),contentview.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)])
        configureTopView()
    }
    
    func configureTopView(){
        contentview.addSubview(topview)
        NSLayoutConstraint.activate([topview.topAnchor.constraint(equalTo: contentview.topAnchor),
                                     topview.leftAnchor.constraint(equalTo: contentview.leftAnchor,constant: 0),
                                     topview.rightAnchor.constraint(equalTo: contentview.rightAnchor,constant: 0),
                                     topview.heightAnchor.constraint(lessThanOrEqualToConstant: 250)])
        
        topview.addSubview(newsImage)
        
        NSLayoutConstraint.activate([newsImage.topAnchor.constraint(equalTo: topview.topAnchor),
                                     newsImage.leftAnchor.constraint(equalTo: topview.leftAnchor),
                                     newsImage.rightAnchor.constraint(equalTo: topview.rightAnchor),
                                     newsImage.heightAnchor.constraint(lessThanOrEqualToConstant: 200)])
        
//        topview.addSubview(titlelabel)
//
//        NSLayoutConstraint.activate([titlelabel.topAnchor.constraint(equalTo: topview.topAnchor,constant: 210),
//                                     titlelabel.leftAnchor.constraint(equalTo: topview.leftAnchor,constant: 10),
//                                     titlelabel.rightAnchor.constraint(equalTo: topview.rightAnchor,constant: 10),
//                                     titlelabel.heightAnchor.constraint(lessThanOrEqualToConstant: 20)])
//
//        topview.addSubview(sublabel)
//        NSLayoutConstraint.activate([
//            sublabel.topAnchor.constraint(equalTo: titlelabel.bottomAnchor,constant: 5),
//            sublabel.leftAnchor.constraint(equalTo: topview.leftAnchor,constant: 10),
//            sublabel.rightAnchor.constraint(equalTo: topview.rightAnchor),
//            sublabel.bottomAnchor.constraint(equalTo: topview.bottomAnchor)])
        
        topview.addSubview(profileSectionTopview)
        

        NSLayoutConstraint.activate([profileSectionTopview.topAnchor.constraint(equalTo: topview.topAnchor,constant: 210),
                                     profileSectionTopview.leftAnchor.constraint(equalTo: topview.leftAnchor,constant: 0),
                                     profileSectionTopview.rightAnchor.constraint(equalTo: topview.rightAnchor,constant: 0),
                                     profileSectionTopview.heightAnchor.constraint(lessThanOrEqualToConstant: 80)])
        
        
        
    }
    
}
