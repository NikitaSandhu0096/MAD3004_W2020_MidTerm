//
//  Mobile.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill, CalculateTotalBill{
    
    var mobileManufacturerName : String
    var planName : String
    var mobileNumber : String
    var internetGBUsed : Int
    var minuteUsed : Int
    var planRate : Float
    var internetRate : Float

    init(billId: String, billDate: String, billType: type, mobileManufacturerName : String, planName : String, mobileNumber : String, internetGBUsed : Int, minuteUsed : Int, planRate : Float, internetRate : Float) {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        self.planRate = planRate
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    func calculateBill() -> Float {
        let intr = Float(self.internetGBUsed) * self.internetRate
        let mob = Float(self.minuteUsed) * self.planRate
        totalBillAmount = intr + mob
        return totalBillAmount
    }

    override func display() {
        super.display()
        print("      Bill Amount : \(calculateBill().currency())")
        print("      Manufacturer Name : \(self.mobileManufacturerName)")
        print("      Plan Name : \(self.planName)")
        print("      Mobile Number : \(self.mobileNumber)")
        print("      Internet Usage : \(self.internetGBUsed.dataUsed())")
        print("      Minutes Usage : \(self.minuteUsed.time())")
        print("      Plan Rate : \(self.planRate.currencyPerMin())")
        print("      Internet Rate : \(self.internetRate.currencyPerGB())")
    }
}
