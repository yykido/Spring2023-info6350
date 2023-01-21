//
//  ViewController.swift
//  Hello World
//
//  Created by yy on 2023/1/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Hello world!")
        lblExample.text = "Hello World"
    }
    
    
}

