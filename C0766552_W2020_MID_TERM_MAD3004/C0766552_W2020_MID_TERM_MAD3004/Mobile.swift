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
    var intenetGBUsed : Int
    var minuteUsed : Int
    var mobileRate : Int
    
    init(billId: Int, billDate: Date, billType: type, totalBillAmount: Double, mobileManufacturerName : String, planName : String, mobileNumber : Int, internetGBUsed : Int, minuteUsed : Int, mobileRate : Int) {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.intenetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        self.mobileRate = mobileRate
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
    override func display() {
        <#code#>
    }
}
