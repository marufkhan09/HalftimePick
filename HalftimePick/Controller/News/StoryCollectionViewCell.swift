

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    static let identifier = "StoryCollectionViewCell"
    
    func setup(_ item: ListItem) {
        
    }
    
    private let imageview : UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .topLeft
        return imageview
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageview)
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with image: UIImage?){
        imageview.image = image
         }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageview.frame = contentView.bounds
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

