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
    var totalBillAmount : Double
    
    init(billId : String, billDate : String, billType : type) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    func evaluateDate() -> Date {
        let dateformat = DateFormatter()
        dateformat.dateFormat = "MM/dd/yyy"
        guard let date = dateformat.date(from: billDate) else {  print("Enter valid Date") }
        return date
    }
    
    func display() {
        print("Bill ID : \(self.billId)")
        print("Bill Date : \(evaluateDate())")
        print("Bill Type : \(self.billType)")
    }
}
