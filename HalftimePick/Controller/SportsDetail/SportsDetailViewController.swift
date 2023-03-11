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


