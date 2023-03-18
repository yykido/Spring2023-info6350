//
//  StockPrice.swift
//  LocalDBUsingRealm
//
//  Created by yy on 2023/3/17.
//

import Foundation
import RealmSwift

class StockPrice: Object {
    @objc dynamic var symbol: String = ""
    @objc dynamic var price: Float = 0.0
    @objc dynamic var volume: Int64 = 0
    
    override static func primaryKey() -> String? {
        return "symbol"
    }
}
