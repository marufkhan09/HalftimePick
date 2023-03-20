

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "StoryCollectionViewCell"
    
    private lazy var cv: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let imageview : UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .center
        return imageview
    }()
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "NFL"
        label.textAlignment = .center
        label.textColor = .white
        label.font = label.font.withSize(12)
        //      label.font = UIFont.preferredFont(forTextStyle: .title1) // title1, larger, title2 medium, title3 smaller
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
       
       
    }
    
    
    
  func  setupView(){
      contentView.addSubview(cv)
      contentView.clipsToBounds = true
      cv.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: frame.size.width, height: 0, enableInsets: false)
      setupImageview()
    }
    
    func setupImageview(){
        cv.addSubview(imageview)
        imageview.anchor(top: cv.topAnchor, left: cv.leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 40, enableInsets: false)
        
        setupTitle()
    }
    func setupTitle(){
        cv.addSubview(titleLabel)
        titleLabel.anchor(top: imageview.bottomAnchor, left: cv.leftAnchor, bottom: cv.bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 40, height: 0, enableInsets: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with image: UIImage?){
        imageview.image = image
         }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        cv.frame = contentView.bounds
        imageview.layoutIfNeeded()
        imageview.layer.cornerRadius = imageview.frame.height / 2
        imageview.clipsToBounds = true
        imageview.contentMode = UIView.ContentMode.scaleToFill 
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageview.image = nil
        
    }
    
}

