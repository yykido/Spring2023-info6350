//
//  SecondViewController.swift
//  SevenWonder2
//
//  Created by yy on 2023/3/18.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblDetail: UILabel!
    
    var desText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetail.text = desText
        // Do any additional setup after loading the view.
    }
    

}
