//
//  Hydro.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill{
    var agencyName : String
    var unitConsumed : Int
    var hyrdoRate : Int
    
    init(billId: Int, billDate: Date, billType: type, totalBillAmount: Double, agencyName : String, unitConsumed : Int, hydroRate : Int) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        self.hyrdoRate = hydroRate
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
    override func display() {
        print("Bill ID : \(billId)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
        print("Bill Amount : \(totalBillAmount)")
        print("Agency Name : \(agencyName)")
        print("Unit Consumed : \(unitConsumed)")
        print("Hydro Rate : \(hyrdoRate)")
    }
}
