//
//  ViewController.swift
//  LocalDBUsingRealm
//
//  Created by yy on 2023/3/17.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(Realm.Configuration.defaultConfiguration.fileURL!)
        // Do any additional setup after loading the view.
//        testFuction()
        getValue()
    }
    
    func getValue() {
        do {
            let stocks = realm.objects(StockPrice.self)
            print(stocks)
        }
        catch let error as NSError {
            print("Unable to add vlues to the DB")
        }
    }
    func testFuction() {
        let tsla: StockPrice = StockPrice()
        tsla.symbol = "TSLA"
        tsla.price = 157.23
        tsla.volume = 123234235
        
        let msft: StockPrice = StockPrice()
        msft.symbol = "MSFT"
        msft.price = 200.00
        msft.volume = 100000000
        
        //Add to the Realm
        do {
            try! realm.write {
                realm.add(msft, update: .modified)
            }
        } catch let error as NSError {
            print("unable to add values to the DB")
        }
        
        
    }


}

