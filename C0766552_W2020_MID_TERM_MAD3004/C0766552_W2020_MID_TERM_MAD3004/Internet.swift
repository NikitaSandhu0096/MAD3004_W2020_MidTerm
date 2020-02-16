//
//  Internet.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill{
    var providerName : String
    var internetGBUsed : Int
    var internetRate : Float
    
    init(billId: String, billDate: String, billType: type, providerName : String, internetGBUsed : Int, internetRate : Float) {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    override func calculateBill() -> Float {
        totalBillAmount = Float(self.internetGBUsed) * self.internetRate
        return totalBillAmount
    }
    
    override func display() {
        super.display()
        print("Bill Amount : \(calculateBill())")
        print("Provider Name : \(self.providerName)")
        print("Internet Usage : \(self.internetGBUsed)")
        print("Internet Rate : \(self.internetRate)")
    }
}

