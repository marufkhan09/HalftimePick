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
    let scrollView: DetailView = {
        let view = DetailView()
        //view.showsVerticalScrollIndicator = true
//        view.isDirectionalLockEnabled = true
//        view.showsHorizontalScrollIndicator = false
       // view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       // configureScrollView()
        
        view.addSubview(scrollView)

        // Do any additional setup after loading the view.
    }
    let sView: UIScrollView = {
        let view = UIScrollView()
        view.showsVerticalScrollIndicator = true
        view.isDirectionalLockEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()


    let contentview : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let topview : UIView = {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

//    let profileSectionTopview : newsPostersDetail = {
//        let view = newsPostersDetail()
//        view.frame.size.height = 20
//        view.newsTitle.text = "Leo John"
//        view.newsPostTime.text = "Post . 5hr ago"
//        view.profileImage.image = UIImage(named: "demopic")
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()

    let titlelabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "titlelabel"
        label.textColor = .white
        label.font = UIFont(name: "AppleSDGothicNeo", size: 20)
        return label
    }()
    let sublabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "subtitlelabel"
        label.textColor = .white
        return label
    }()

    let newsImage : UIImageView = {
        let img = UIImageView()

        img.image = UIImage(named: "playdet")

        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    let profileImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "playdet")
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

//    func configureUI(){
//        view.addSubview(scrollView)
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            scrollView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            scrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)])
//
//        scrollView.addSubview(contentview)
//
//        NSLayoutConstraint.activate([
//
//            contentview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            contentview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            contentview.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            contentview.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),contentview.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)])
//        configureTopView()
//    }

//    func configureTopView(){
//        contentview.backgroundColor = .black
//        contentview.addSubview(topview)
//        NSLayoutConstraint.activate([topview.topAnchor.constraint(equalTo: contentview.topAnchor),
//                                     topview.leftAnchor.constraint(equalTo: contentview.leftAnchor,constant: 0),
//                                     topview.rightAnchor.constraint(equalTo: contentview.rightAnchor,constant: 0),
//                                     topview.heightAnchor.constraint(equalToConstant:  250)])
//        topview.backgroundColor = .systemRed
//        topview.addSubview(newsImage)
//        //topview.addSubview(profileSectionTopview)
//
//        NSLayoutConstraint.activate([newsImage.topAnchor.constraint(equalTo: topview.topAnchor),
//                                     newsImage.leftAnchor.constraint(equalTo: topview.leftAnchor),
//                                     newsImage.rightAnchor.constraint(equalTo: topview.rightAnchor),
//                                     newsImage.heightAnchor.constraint(lessThanOrEqualToConstant: 220),
//                                    ])
//
////        topview.addSubview(titlelabel)
////        titlelabel.backgroundColor = .orange
////        NSLayoutConstraint.activate([titlelabel.topAnchor.constraint(equalTo: topview.topAnchor),
////                                     titlelabel.leftAnchor.constraint(equalTo: topview.leftAnchor,constant: 10),
////                                     titlelabel.rightAnchor.constraint(equalTo: topview.rightAnchor,constant: 10),
////                                     titlelabel.heightAnchor.constraint(lessThanOrEqualToConstant: 20)])
//
//        topview.addSubview(titlelabel)
//        NSLayoutConstraint.activate([
//            titlelabel.topAnchor.constraint(equalTo: newsImage.bottomAnchor,constant: 0),
//            titlelabel.leftAnchor.constraint(equalTo: topview.leftAnchor,constant: 10),
//            titlelabel.rightAnchor.constraint(equalTo: topview.rightAnchor),
//            titlelabel.bottomAnchor.constraint(equalTo: topview.bottomAnchor)])
//
//        topview.addSubview(sublabel)
//        NSLayoutConstraint.activate([
//            sublabel.topAnchor.constraint(equalTo: titlelabel.bottomAnchor,constant: 5),
//            sublabel.leftAnchor.constraint(equalTo: topview.leftAnchor,constant: 10),
//            sublabel.rightAnchor.constraint(equalTo: topview.rightAnchor),
//            sublabel.bottomAnchor.constraint(equalTo: topview.bottomAnchor)])
//
//
//
//
//
//
//
//    }

    func configureScrollView(){
        view.addSubview(scrollView)
        var constraints = [NSLayoutConstraint]()
        constraints.append(scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(scrollView.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor))




        NSLayoutConstraint.activate(constraints)
    //    configureImage()

    }

    func configureContentView(){
        scrollView.addSubview(contentview)
        var constraints = [NSLayoutConstraint]()
        constraints.append(contentview.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor))
        constraints.append(contentview.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor,constant: 50))
        constraints.append(contentview.topAnchor.constraint(equalTo: scrollView.topAnchor))
        constraints.append(contentview.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor))

        NSLayoutConstraint.activate(constraints)
    }
    func configureImage(){
        contentview.addSubview(newsImage)

        var constraints = [NSLayoutConstraint]()
        constraints.append(newsImage.leadingAnchor.constraint(equalTo: contentview.leadingAnchor))
        constraints.append(newsImage.trailingAnchor.constraint(equalTo: contentview.trailingAnchor))
        constraints.append(newsImage.topAnchor.constraint(equalTo: contentview.topAnchor))
        constraints.append(newsImage.bottomAnchor.constraint(equalTo: contentview.bottomAnchor))

        NSLayoutConstraint.activate(constraints)
    }
}


