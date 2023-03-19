//
//  ViewController.swift
//  MakeAPICall2
//
//  Created by yy on 2023/3/18.
//

import UIKit
import Alamofire
import SwiftSpinner
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol:UITextField!

    
    @IBOutlet weak var lblStockPrice: UILabel!

    
    @IBOutlet weak var lblStockName: UILabel!
    
    
    @IBOutlet weak var lblWebsite: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getInfo(_ sender: Any) {
        print("i am here")
        guard let symbol = txtStockSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        SwiftSpinner.show("Getting Stock price for \(symbol)")
        
        AF.request(url).responseJSON {response in
            SwiftSpinner.hide()
            if response.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            print(stock)
            let companyname = stock["companyName"].stringValue
            let price = stock["price"].doubleValue
            let website = stock["website"].stringValue
//            print("Symbol = \(symbol)")
//            print("price = \(price)")
//            print("website = \(website)")
            self.lblStockPrice.text = "Price: \(price) $"
            self.lblWebsite.text = "website = \(website)"
            self.lblStockName.text = "companyName: \(companyname)"
        }
    }
}

