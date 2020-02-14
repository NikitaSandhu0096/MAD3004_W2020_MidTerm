//
//  Mobile.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill{
    var mobileManufacturerName : String
    var planName : String
    var mobileNumber : Int
    var internetGBUsed : Int
    var minuteUsed : Int
    var mobileRate : Int
    
    init(billId: String, billDate: Date, billType: type, mobileManufacturerName : String, planName : String, mobileNumber : Int, internetGBUsed : Int, minuteUsed : Int, mobileRate : Int) {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        self.mobileRate = mobileRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    func calculateBill() -> Double {
        totalBillAmount = Double(internetGBUsed * mobileRate)
        return totalBillAmount
    }
    
    override func display() {
        super.display()
        print("Bill Amount : \(totalBillAmount)")
        print("Manufacturer Name : \(self.mobileManufacturerName)")
        print("Plan Name : \(self.planName)")
        print("Mobile Number : \(self.mobileNumber)")
        print("Internet Usage : \(self.internetGBUsed)")
        print("Minutes Usage : \(self.minuteUsed)")
        print("Mobile Rate : \(self.mobileRate)")
    }
}
