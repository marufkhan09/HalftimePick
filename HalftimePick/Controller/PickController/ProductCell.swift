//
//  ProductCell.swift
//  Sample_TableView
//
//  Created by Esat Kemal Ekren on 5.04.2018.
//  Copyright © 2018 Esat Kemal Ekren. All rights reserved.
//

import UIKit

protocol ProductCellDelegate {
    func increaseNumber(cell: ProductCell,number : Int)
    func decreaseNumber(cell: ProductCell,number : Int)
}

class ProductCell : UITableViewCell {
    var delegate : ProductCellDelegate?
    let minValue = 0
    
    var product : Product? {
        didSet {
          //  productImage.image = product?.productImage
            locationLabel.text = product?.location
            timeLabel.text = product?.timelabel
            team1Label.text = product?.team1
            team2Label.text = product?.team2
            team1Image.image = product?.team1img
            team2Image.image = product?.team2img
            team1Label.text = product?.team1
            team2Label.text = product?.team2
            team1money.text = product?.team1money
            team2money.text = product?.team2money
            team1spread.text = product?.team1speard
            team1subspread.text = product?.team1subspeard
            team2spread.text = product?.team2speard
            team2subspread.text = product?.team2subtot
            team1total.text = product?.team1total
            team1subspread.text = product?.team1subspeard
            team2total.text = product?.team2total
            team2subtotal.text = product?.team2subtot
        }
    }
    private let locationLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let timeLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        
        return lbl
    }()
    
    
    private let team1Label : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let team2Label : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .left
        return lbl
    }()
    private let team1Image : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "screenSplash"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let team2Image : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "screenSplash"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    private let moneyLine : UILabel = {
        let lbl = UILabel()
        lbl.text = "Money Line"
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    
     private let spread : UILabel = {
         let lbl = UILabel()
         lbl.text = "Spread"
         lbl.textColor = .white
         lbl.font = UIFont.boldSystemFont(ofSize: 12)
         lbl.textAlignment = .center
         return lbl
     }()
    private let total : UILabel = {
        let lbl = UILabel()
        lbl.text = "Total"
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team1money : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team2money : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 12)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team1spread : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team1subspread : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 8)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team2spread : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team2subspread : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 8)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team1total : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team1subtotl : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 8)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team2total : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 10)
        lbl.textAlignment = .center
        return lbl
    }()
    private let team2subtotal : UILabel = {
        let lbl = UILabel()

        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 8)
        lbl.textAlignment = .center
        return lbl
    }()

 
    
 

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.backgroundColor = UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
        contentView.addSubview(locationLabel)
        contentView.addSubview(timeLabel)
        contentView.addSubview(team1Image)
        contentView.addSubview(team2Image)
        contentView.addSubview(team1Label)
        contentView.addSubview(team2Label)
        contentView.addSubview(moneyLine)
        contentView.addSubview(spread)
        contentView.addSubview(total)
        contentView.addSubview(team1money)
        contentView.addSubview(team2money)
        contentView.addSubview(team1spread)
        contentView.addSubview(team1subspread)
        contentView.addSubview(team2spread)
        contentView.addSubview(team2subspread)
        contentView.addSubview(team1total)
        contentView.addSubview(team2total)
        

        locationLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
        timeLabel.anchor(top: locationLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 3, height: 0, enableInsets: false)
        team1Image.anchor(top: timeLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 10, height: 15, enableInsets: false)
        team2Image.anchor(top: team1Image.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 10, height: 15, enableInsets: false)
        team1Label.anchor(top: timeLabel.bottomAnchor, left: team1Image.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 100, height: 0, enableInsets: false)

        team2Label.anchor(top: team1Label.bottomAnchor, left: team2Image.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 20, paddingRight: 0, width: 100, height: 0, enableInsets: false)
        
        moneyLine.anchor(top: locationLabel.bottomAnchor, left: timeLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        spread.anchor(top: locationLabel.bottomAnchor, left: moneyLine.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        
        total.anchor(top: locationLabel.bottomAnchor, left: spread.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        team1money.anchor(top: moneyLine.bottomAnchor, left: team1Label.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 6, height: 0, enableInsets: false)
        team2money.anchor(top: team1money.bottomAnchor, left: team2Label.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 6, height: 0, enableInsets: false)
        team1spread.anchor(top: spread.bottomAnchor, left: moneyLine.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        team1subspread.anchor(top: team1spread.bottomAnchor, left: moneyLine.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        team2spread.anchor(top: team1money.bottomAnchor, left: moneyLine.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        team2subspread.anchor(top: team2spread.bottomAnchor, left: moneyLine.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 4, height: 0, enableInsets: false)
        team1total.anchor(top: total.bottomAnchor, left: spread.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width/4, height: 0, enableInsets: false)
        team2total.anchor(top: team1total.bottomAnchor, left: spread.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width/4, height: 0, enableInsets: false)
        
        

    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
    }
    
}
