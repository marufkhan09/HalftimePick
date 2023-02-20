//
//  ScoreTableViewCell.swift
//  HalftimePick
//
//  Created by Maruf Khan on 15/2/23.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {
    @IBOutlet weak var team1img: UIImageView!
    @IBOutlet weak var team2img: UIImageView!
    @IBOutlet weak var scorecardview: UIView!
    @IBOutlet weak var team1name: UILabel!
    @IBOutlet weak var team2name: UILabel!
    @IBOutlet weak var team1score: UILabel!
    @IBOutlet weak var team2score: UILabel!
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var timelabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    scorecardview.backgroundColor = UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
        // Initialization code
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
