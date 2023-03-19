//
//  SportsCollectionViewCell.swift
//  HalftimePick
//
//  Created by Maruf Khan on 28/2/23.
//

import UIKit

class sportsCell: UICollectionViewCell {
    static let identifier = "sportsCell"
    
    private let imageview : UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .topLeft
        return imageview
    }()
    public lazy var shareButton: UIButton = {
        let iv = UIButton()
        iv.setImage(UIImage(named: "send-plane-line"), for: .normal)
        iv.clipsToBounds = true
        
        return iv
    }()
    public lazy var saveButton: UIButton = {
        let iv = UIButton()
        iv.setImage(UIImage(named: "bookmark-line"), for: .normal)
//        iv.widthAnchor.constraint(equalToConstant: 40).isActive = true
//        iv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iv.clipsToBounds = true
        
        return iv
    }()
    public lazy var headlineLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "NFL is a long established fact that a reader will be readable content of a page when looking."
        label.font = label.font.withSize(14)// title1, larger, title2 medium, title3 smaller
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
        contentView.addSubview(imageview)
        contentView.addSubview(shareButton)
        contentView.addSubview(saveButton)
        
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with image: UIImage?){
        imageview.image = image
        imageview.clipsToBounds = true
        imageview.contentMode = UIView.ContentMode.scaleAspectFit    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageview.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageview.image = nil
    }
    
}
