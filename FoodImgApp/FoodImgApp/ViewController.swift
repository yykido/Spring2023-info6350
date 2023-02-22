//
//  ViewController.swift
//  FoodImgApp
//
//  Created by yy on 2023/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    let foodImage = [food]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imageFromCell.image = UIImage(named: "food\(indexPath.row)")
        cell.imgLable.text = "food\(indexPath.row)"
        
        return cell
    }
    


}

