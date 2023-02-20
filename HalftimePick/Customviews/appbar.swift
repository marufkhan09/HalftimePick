//
//  appbar.swift
//  HalftimePick
//
//  Created by Maruf Khan on 13/2/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func newsNavBar(_ target: UIViewController, leftAcion: Selector, rightAction: Selector) {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(red: 0.11, green: 0.19, blue: 0.32, alpha: 1.00)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        let leftBarButtonItem = UIBarButtonItem(title: "", image: UIImage(named: "logo")!.withRenderingMode(.alwaysOriginal), target: target, action: leftAcion)
        //self.navigationItem.setLeftBarButton(leftBarButtonItem, animated: true)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        
        let rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), style: UIBarButtonItem.Style.plain, target: target, action: rightAction)
        //self.navigationItem.setRightBarButton(rightBarButtonItem, animated: true)
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    func homeNavBar(_ target: UIViewController) {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(red: 0.11, green: 0.19, blue: 0.32, alpha: 1.00)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
       // navigationController?.navigationBar.tintColor = .white
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
//          self.navigationItem.titleView = UIImageView(image: UIImage(named: "logo"))
        
       
        self.navigationItem.title = "All Sports"
        
        
      
     
    
    }
}
