//
//  ViewController.swift
//  SevenWonder2
//
//  Created by yy on 2023/3/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    let imageName = ["","Eiffel Tower","Egyptian pyramids","the Great Wall","Shanghai Tower","Tokyo Tower","leaning tower of pisa","Colosseum"]
    let arr = ["","This is detail of Eiffel Tower...", "Detail of Egyptian pyramids!","show the Great Wall detail","detail of Shanghai tw","Tokyo Tower details","This is pisa tower' detail","more info of Colosseum"]
    var desText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        desText = arr[indexPath.row]
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageContainer.image = UIImage(named: "image\(indexPath.row)")
        cell.lblImage.text = imageName[indexPath.row]
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.desText = self.desText
            
        }
    }
}

