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
    var billDate : String
    var billType : type
    var totalBillAmount : Double = 0.0
    
    init(billId : String, billDate : String, billType : type) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    func display() {
        print("Bill ID : \(self.billId)")
        print("Bill Date : \(self.billDate)")
        print("Bill Type : \(self.billType)")
    }
}
