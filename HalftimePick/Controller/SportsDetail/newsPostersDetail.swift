//
//  newsPostersDetail.swift
//  HalftimePick
//
//  Created by Maruf Khan on 6/3/23.
//

import UIKit

class newsPostersDetail: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var wishlistBtn: UIImageView!
    @IBOutlet weak var shareButton: UIImageView!
    @IBOutlet weak var newsPostTime: UILabel!
    @IBOutlet weak var newsTitle: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setup()
    }
    override func layoutSubviews() {
        profileImage?.layer.cornerRadius = (profileImage?.frame.size.width ?? 0.0) / 2
        profileImage?.clipsToBounds = true
        profileImage?.layer.borderWidth = 0.0
        profileImage?.layer.borderColor = UIColor.white.cgColor
        super.layoutSubviews()
    }

    
    func setup() {
        Bundle.main.loadNibNamed("newsPostersDetail", owner: self, options: nil)
        self.addSubview(self.view)
    }
}
