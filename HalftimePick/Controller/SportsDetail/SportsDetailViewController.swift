//
//  SportsDetailViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 5/3/23.
//

import UIKit

class SportsDetailViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        //
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
    
    let titlelabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "asdadsda"
        return label
    }()
    let sublabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "asdadsda"
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
            scrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),])
        
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
        topview.topAnchor.constraint(equalTo: contentview.topAnchor)
        topview.leftAnchor.constraint(equalTo: contentview.leftAnchor,constant: 0)
        topview.rightAnchor.constraint(equalTo: contentview.rightAnchor,constant: 0)
        topview.heightAnchor.constraint(lessThanOrEqualToConstant: 200)
        
    }
}
