//
//  ViewController.swift
//  TwoTables
//
//  Created by yy on 2023/2/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let restaurants = ["Popeye","Shakeshack","PeterLuger"]
    var restaurantMenu: [String] = []
    var popeye = ["chikenham","chiken wing"]
    var shakeshack = ["beefham","frenchfries"]
    var peterLuger = ["steak", "salad", "pizza"]

    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restaurants.count
        }
        else {
            return restaurantMenu.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restaurants[indexPath.row]
            return cell
        }
        else if tableView == tblViewBottom {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celltwo", for: indexPath)
            cell.textLabel?.text = restaurantMenu[indexPath.row]
            return cell
        }
        else {
            return UITableViewCell();
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            let selectedData = restaurants[indexPath.row]
            
//            restaurant1 = [selectedData + "Detail 1", selectedData + "Detail 2", selectedData + "Detail 3"]
            if selectedData == "Popeye" {
                restaurantMenu = popeye;
            }
            else if selectedData == "Shakeshack" {
                restaurantMenu = shakeshack
            }
            else if selectedData == "PeterLuger" {
                restaurantMenu = peterLuger
            }
            tblViewBottom.reloadData()
        }
    }
    


}

