////
////  SportsCollectionViewCell.swift
////  HalftimePick
////
////  Created by Maruf Khan on 28/2/23.
////
//
//import UIKit
//
//class SportsCollectionViewCell: UICollectionViewCell {
//    static let identifier = "SportsCollectionViewCell"
//    
//    private let imageview : UIImageView = {
//        let imageview = UIImageView()
//        imageview.contentMode = .topLeft
//        return imageview
//    }()
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        contentView.addSubview(imageview)
//        contentView.clipsToBounds = true
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func configure(with image: UIImage?){
//        imageview.image = image
//        imageview.clipsToBounds = true
//        imageview.contentMode = UIView.ContentMode.scaleAspectFit    }
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        imageview.frame = contentView.bounds
//    }
//    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        imageview.image = nil
//    }
//    
//}
