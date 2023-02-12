//
//  HomeTabBarController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
       // view.backgroundColor = .systemBackground
        initialView()
        
    }
    
   func initialView(){
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: NewsViewController())
        let vc3 = UINavigationController(rootViewController: ScoreViewController())
        let vc4 = UINavigationController(rootViewController: PickViewController())
   
       vc1.tabBarItem.image = UIImage(named: "Home")
       vc2.tabBarItem.image = UIImage(named: "News")
       vc3.tabBarItem.image = UIImage(named: "1:2")
       vc4.tabBarItem.image = UIImage(named: "fingerprint")
       vc1.title = "Home"
       vc2.title = "News"
       vc3.title = "Scores"
       vc4.title = "Pick/Odds"
      self.tabBar.tintColor = UIColor(hex: "#3063C5") // tab bar icon tint color
       self.tabBar.isTranslucent = false
       UITabBar.appearance().barTintColor = UIColor(hex: "#3063C5")
       self.tabBar.unselectedItemTintColor = .systemGray
       setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
}
