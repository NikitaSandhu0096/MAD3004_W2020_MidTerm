//
//  Hydro.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill, CalculateTotalBill{
    
    var agencyName : String
    var unitConsumed : Int
    var hyrdoRate : Float
    
    init(billId: String, billDate: String, billType: type, agencyName : String, unitConsumed : Int, hydroRate : Float) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        self.hyrdoRate = hydroRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    func calculateBill() -> Float {
        totalBillAmount = Float(self.unitConsumed) * self.hyrdoRate
        return totalBillAmount
    }
    
    override func display() {
        super.display()
        print("Bill Amount : \(calculateBill().currency())")
        print("Agency Name : \(self.agencyName)")
        print("Unit Consumed : \(self.unitConsumed)")
        print("Hydro Rate : \(self.hyrdoRate.currency())")
    }
}
