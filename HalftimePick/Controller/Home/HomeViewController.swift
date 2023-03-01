//
//  HomeViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let tableview = UITableView()
    
    
    override func viewWillAppear(_ animated: Bool) {
   
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        homeNavBar(HomeViewController())
        initialiseTableView()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
    
    
    func  initialiseTableView(){
        view.addSubview(tableview)
        tableview.register(UINib.init(nibName: "gamelistTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableview.delegate = self
        tableview.dataSource = self
        tableview.backgroundColor = .black
        
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = UITableView.automaticDimension
        tableview.separatorColor = .clear
    }
    
    
}

extension HomeViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    // Set the spacing between sections
     func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         return 10
     }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! gamelistTableViewCell
        cell.selectionStyle = .none
        cell.cellTitle.text = "NCAAF FOOTBALL \(indexPath.row+1)"
        cell.gameImage.image = UIImage(named: "nfl")
    //    cell.gameImage.backgroundColor = .white
        cell.gameImage.backgroundColor =  UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
//        cell.gameImage.maskCircle(anyImage: UIImage(named: "nfl")!)
        //var content = cell.defaultContentConfiguration()
        //   content.image = UIImage(systemName: "star")
        //content.text = "Cell \(indexPath.row+1)"
        // Customize appearance.
        // content.imageProperties.tintColor = .purple
        //        content.image = UIImage(named: "logo")
        //        cell.contentView.backgroundColor = UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let sportsController = storyBoard.instantiateViewController(withIdentifier: "sportsController") as! SportsDetailViewController
//
//        self.present(sportsController, animated:true, completion:nil)
      
        let newViewController = SportsDetailViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
      
    }
}


extension UIImageView {
  public func maskCircle(anyImage: UIImage) {
      self.contentMode = UIView.ContentMode.scaleAspectFit
      self.layer.cornerRadius = self.frame.height
      //self.layer.cornerRadius =  bounds.height / 2
self.layer.masksToBounds = false
    self.clipsToBounds = true

   // make square(* must to make circle),
   // resize(reduce the kilobyte) and
   // fix rotation.
   self.image = anyImage
  }
}
