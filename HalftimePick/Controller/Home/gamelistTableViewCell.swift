//
//  gamelistTableViewCell.swift
//  HalftimePick
//
//  Created by Maruf Khan on 14/2/23.
//

import UIKit

class gamelistTableViewCell: UITableViewCell {
    
    @IBOutlet weak var gameView: UIView!
    
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        gameView.backgroundColor = UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
