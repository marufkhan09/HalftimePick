////
////  ProductCell.swift
////  Sample_TableView
////
////  Created by Esat Kemal Ekren on 5.04.2018.
////  Copyright © 2018 Esat Kemal Ekren. All rights reserved.
////
//
//import UIKit
//
//
//class NewsCell : UITableViewCell {
//    let minValue = 0
//    
//    var product : Product? {
//        didSet {
//            productImage.image = product?.productImage
//            productNameLabel.text = product?.productName
//            productDescriptionLabel.text = product?.productDesc
//        }
//    }
//    
//    
//    private let productNameLabel : UILabel = {
//        let lbl = UILabel()
//        lbl.textColor = .white
//        lbl.font = UIFont.boldSystemFont(ofSize: 16)
//        lbl.textAlignment = .left
//        return lbl
//    }()
//    
//    
//    private let productDescriptionLabel : UILabel = {
//        let lbl = UILabel()
//        lbl.textColor = .white
//        lbl.font = UIFont.systemFont(ofSize: 16)
//        lbl.textAlignment = .left
//        lbl.numberOfLines = 0
//        return lbl
//    }()
//    
//    
//    private let productImage : UIImageView = {
//        let imgView = UIImageView(image: #imageLiteral(resourceName: "screenSplash"))
//        imgView.contentMode = .scaleAspectFit
//        imgView.clipsToBounds = true
//        return imgView
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        contentView.addSubview(productImage)
//        contentView.addSubview(productNameLabel)
//        contentView.addSubview(productDescriptionLabel)
//
//        
//        productImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 90, height: 0, enableInsets: false)
//        productNameLabel.anchor(top: topAnchor, left: productImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
//        productDescriptionLabel.anchor(top: productNameLabel.bottomAnchor, left: productImage.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
//    
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    
//}
