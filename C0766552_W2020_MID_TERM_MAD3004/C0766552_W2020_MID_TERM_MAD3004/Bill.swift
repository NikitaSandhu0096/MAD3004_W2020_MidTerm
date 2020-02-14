//
//  Bill.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum type {
    case Internet
    case Mobile
    case Hydro
}

class Bill : IDisplay{
    var billId : String
    var billDate : Date
    var billType : type
    var totalBillAmount : Double
    
    init(billId : String, billDate : Date, billType : type, totalBillAmount : Double) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    func display() {
        print("Bill ID : \(billId)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
        print("Bill Amount : \(totalBillAmount)")
    }
}
