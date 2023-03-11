//
//  TopNewsTableViewCell.swift
//  HalftimePick
//
//  Created by Maruf Khan on 11/3/23.
//

import UIKit

class TopNewsTableViewCell: UITableViewCell {
    
    public lazy var topnewsLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "NFL is a long established fact that a reader will be readable content of a page when looking."
        label.font = label.font.withSize(12)// title1, larger, title2 medium, title3 smaller
        return label
    }()
    
    public lazy var newsTime: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "NFL is a long established fact that a reader will be readable content of a page when looking."
        label.font = label.font.withSize(10)// title1, larger, title2 medium, title3 smaller
        return label
    }()
    
    public lazy var topNewsImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "nfl")
        iv.clipsToBounds = true
        
        return iv
    }()
    private lazy var cellcontentView: UIView = {
        let view = UIView()
        return view
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setupcontentContstraints()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
        super.layoutSubviews()
    }
    
    private func setupcontentContstraints() {
        addSubview(cellcontentView)
        cellcontentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellcontentView.topAnchor.constraint(equalTo: topAnchor),
            cellcontentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cellcontentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            cellcontentView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    private func setupImageViewConstraints() {
        cellcontentView.addSubview(topNewsImageView)
        topNewsImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topNewsImageView.topAnchor.constraint(equalTo: cellcontentView.topAnchor),
            topNewsImageView.leadingAnchor.constraint(equalTo: cellcontentView.leadingAnchor),
            topNewsImageView.trailingAnchor.constraint(equalTo: cellcontentView.trailingAnchor),
            topNewsImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.80)
        ])
    }

}
