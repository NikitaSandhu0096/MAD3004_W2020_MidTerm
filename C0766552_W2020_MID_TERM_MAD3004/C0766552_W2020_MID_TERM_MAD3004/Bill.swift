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
    var totalBillAmount : Float = 0.0
    
    init(billId : String, billDate : String, billType : type) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    func evaluateDate(string : String) -> String {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
        let dateformatGet = DateFormatter()
        dateformatGet.dateFormat = "dd/MM/yyyy"

        let dateformatSet = DateFormatter()
        dateformatSet.dateFormat = "EEEE,d MMMM, yyyy"

        let date : Date? = dateformatGet.date(from: billDate)
        return dateformatSet.string(from: date!)
        
    }
    
    func display() {
        print("Bill ID : \(self.billId)")
        print("Bill Date : \(evaluateDate(string: billDate))")
        print("Bill Type : \(self.billType)")
    }
}
