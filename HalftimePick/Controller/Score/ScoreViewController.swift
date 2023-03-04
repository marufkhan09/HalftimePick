//
//  ScoreViewController.swift
//  HalftimePick
//
//  Created by Maruf Khan on 12/2/23.
//
//
import UIKit

class ScoreViewController: UIViewController {
    let tableview = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        homeNavBar(HomeViewController())
        initialiseTableView()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black

    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }

    func  initialiseTableView(){
        view.addSubview(tableview)
        tableview.register(UINib.init(nibName: "ScoreTableViewCell", bundle: nil), forCellReuseIdentifier: "scorecell")
        tableview.delegate = self
        tableview.dataSource = self
        tableview.backgroundColor = .black

        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = UITableView.automaticDimension
        tableview.separatorColor = .clear
    }



}


extension ScoreViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0//Choose your custom row height
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "scorecell", for: indexPath) as! ScoreTableViewCell
        cell.selectionStyle = .none
        cell.team1name.text = "Team \(indexPath.row + 1)"
        cell.team2name.text =  "Team \(indexPath.row + 2)"

        cell.team1img.image = UIImage(named: "nfl")
        cell.team2img.image = UIImage(named: "nfl")
       
        cell.team1img.backgroundColor =  UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
        cell.team2img.backgroundColor =  UIColor(red: 0.05, green: 0.09, blue: 0.15, alpha: 1.00)
        cell.team1score.text = "\(indexPath.row + 1)"
        cell.team2score.text = "\(indexPath.row + 2)"
      
//        cell.team1img.maskCircle(anyImage: UIImage(named: "Home")!)
//        cell.team2img.backgroundColor = .white
//        cell.team2img.maskCircle(anyImage: UIImage(named: "Home")!)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}



//import UIKit
//
//class ScoreViewController: UIViewController {
//    @IBOutlet weak var interfaceSegmented: CustomSegmentedControl!{
//        didSet{
//            interfaceSegmented.setButtonTitles(buttonTitles: ["Scores","News","Chat","Pick/Odds","Standing","Stats"])
//            interfaceSegmented.selectorViewColor = .white
//            interfaceSegmented.selectorTextColor = .orange
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .black
//        let codeSegmented = CustomSegmentedControl(frame: CGRect(x: 0, y: 100, width: self.view.frame.width, height: 20), buttonTitle: ["Scores","News","Chat","Pick/Odds","Standing","Stats"])
//        codeSegmented.backgroundColor = .black
//        codeSegmented.textColor = .white
//        codeSegmented.selectorTextColor = UIColor(red: 0.19, green: 0.39, blue: 0.77, alpha: 1.00)
//        codeSegmented.selectorViewColor = .black
//       // codeSegmented.buttonAction(sender: <#T##UIButton#>)
//        view.addSubview(codeSegmented)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}


