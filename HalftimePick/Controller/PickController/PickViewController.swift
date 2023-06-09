//
//  SportsCollectionViewCell.swift
//  HalftimePick
//
//  Created by Maruf Khan on 28/2/23.
//

import UIKit



class PickViewController: UITableViewController {
    
    let cellId = "cellId"
    var products : [Product]  = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        homeNavBar(PickViewController(),title: "Pick Odds")
        createProductArray()
        tableView.register(ProductCell.self, forCellReuseIdentifier: cellId)
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProductCell
        let currentLastItem = products[indexPath.row]
        cell.product = currentLastItem
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Tue, Jan 3"
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    func createProductArray() {
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
        products.append(Product(location: "Suns @ Cavaliers", timelabel: "Tomorrow, 06:00", team1: "CHI Bears", team2: "DET Lions", team1img: UIImage(named: "chibears")!, team2img: UIImage(named: "lions")!, team1money: "+240", team2money: "-300", team1speard: "+7.5", team1subspeard: "-110", team2speard: "+7.5", team2subspeard: "-110", team1total: "O 232.5", team2total: "O 232.5",team1subtot: "-110",team2subtot: "-110"))
    }
}



