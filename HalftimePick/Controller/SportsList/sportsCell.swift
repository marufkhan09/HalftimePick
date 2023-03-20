//
//  SportsCollectionViewCell.swift
//  HalftimePick
//
//  Created by Maruf Khan on 28/2/23.
//

import UIKit

class sportsCell: UICollectionViewCell {
    static let identifier = "sportsCell"
    
    private lazy var cView: UIView = {
        let view = UIView()
        return view
    }()

    private let imageview : UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .topLeft
        return imageview
    }()
    public lazy var shareButton: UIButton = {
        let iv = UIButton()
        iv.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        
        iv.setImage(UIImage(named: "send-plane-line"), for: .normal)
        iv.clipsToBounds = true
        
        return iv
    }()
    public lazy var saveButton: UIButton = {
        let iv = UIButton()
        iv.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        iv.setImage(UIImage(named: "bookmark-line"), for: .normal)
        //        iv.widthAnchor.constraint(equalToConstant: 40).isActive = true
        //        iv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iv.clipsToBounds = true
        
        return iv
    }()
    public lazy var headlineLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
       // label.font
        label.text = "It is a long established fact that a reader will readable content of a page when looking."
        label.font = label.font.withSize(11)// title1, larger, title2 medium, title3 smaller
        return label
    }()
    public lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "5hrs ago"
        label.textColor = .white
        label.font = label.font.withSize(9)
        //      label.font = UIFont.preferredFont(forTextStyle: .title1) // title1, larger, title2 medium, title3 smaller
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Add the button as a subview of the image view
        imageview.addSubview(saveButton)
        imageview.addSubview(shareButton)
        imageview.addSubview(headlineLabel)
        headlineLabel.anchor(top: nil, left: imageview.leftAnchor, bottom: saveButton.topAnchor, right: imageview.rightAnchor, paddingTop: 0, paddingLeft: frame.size.width * 0.02, paddingBottom: frame.size.width * 0.002, paddingRight: frame.size.width * 0.02, width: imageview.bounds.width, height: 0, enableInsets: false)
        saveButton.anchor(top: nil, left: nil, bottom: imageview.bottomAnchor, right: imageview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 10, width: 20, height: 20, enableInsets: false)
        shareButton.anchor(top: nil, left: nil, bottom: imageview.bottomAnchor, right: saveButton.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 10, width: 20, height: 20, enableInsets: false)
        // Add the image view to your view hierarchy
        self.contentView.addSubview(imageview)
        imageview.anchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: frame.size.width , height: 0, enableInsets: false)
        
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with image: UIImage?){
        cView.backgroundColor = .white
        imageview.image = image
        imageview.clipsToBounds = true
        imageview.contentMode = UIView.ContentMode.scaleToFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageview.frame = contentView.bounds
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = CGRect(x: 0, y: imageview.bounds.height - 100, width: imageview.bounds.width, height: 100)
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor(red: 0.11, green: 0.19, blue: 0.32, alpha: 1.00).cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
//
//        // Add the gradient layer as a sublayer of the image view's layer
//        imageview.layer.addSublayer(gradientLayer)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageview.image = nil
    }
    
}
