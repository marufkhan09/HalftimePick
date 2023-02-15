//
//  navbarbackground.swift
//  HalftimePick
//
//  Created by Maruf Khan on 13/2/23.
//

import UIKit

class navbarbackground: UIView {

    @IBOutlet weak var navtitle: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewInit()
    }
    
    private func viewInit(){
        let xibView = Bundle.main.loadNibNamed("navbarbackground", owner: self,options: nil)![0] as! UIView
        xibView.frame = self.bounds
        addSubview(xibView)
    }

}
