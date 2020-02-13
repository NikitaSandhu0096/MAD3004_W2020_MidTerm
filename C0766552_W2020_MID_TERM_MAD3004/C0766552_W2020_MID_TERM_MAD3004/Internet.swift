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
    var internetRate : Int
    
    init(billId: Int, billDate: Date, billType: type, totalBillAmount: Double, providerName : String, internetGBUsed : Int, internetRate : Int) {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
    override func display() {
        print("Bill ID : \(billId)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
        print("Bill Amount : \(totalBillAmount)")
        print("Provider Name : \(providerName)")
        print("Internet GB Used : \(internetGBUsed)")
        print("Internet Rate : \(internetRate)")
    }
}

