//
//  Insurance.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by Nikita Sandhu on 2020-02-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Insurance : IDisplay{
    
    var insuranceProviderName : String
    var insuranceType : String
    var startDate : String
    var endDate : String
    var insuranceRate : Float
    var totalInstallmentToPay : Float = 0.0
    
    init(insuranceProviderName : String, insuranceType : String, startDate : String, endDate : String, insuranceRate : Float) {
        self.insuranceProviderName = insuranceProviderName
        self.insuranceType = insuranceType
        self.startDate = startDate
        self.endDate = endDate
        self.insuranceRate = insuranceRate
    }
    
    func startingDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
           
        let dateformatGet1 = DateFormatter()
        dateformatGet1.dateFormat = "dd/MM/yyyy"
        
        let startDate1 : Date? = dateformatGet1.date(from: startDate)
        return startDate1!
       }
    
    func endingDate(string : String) -> Date {      //https://stackoverflow.com/questions/35700281/date-format-in-swift
        
     let dateformatGet2 = DateFormatter()
     dateformatGet2.dateFormat = "dd/MM/yyyy"
     
     let endDate1 : Date? = dateformatGet2.date(from: endDate)
     return endDate1!
    }
    
    func totalDays() -> Int{            //https://stackoverflow.com/questions/24723431/swift-days-between-two-nsdates
        let current = Calendar.current
        let numberOfDays = current.dateComponents([Calendar.Component.day], from: startingDate(string: startDate), to: endingDate(string: endDate))
        return numberOfDays.day!
    }
    
    func insurancePayment() -> Float{
        let months = Float(totalDays())/30.00
        totalInstallmentToPay = insuranceRate * months
        return totalInstallmentToPay
    }
    
    func display() {
        print("      Insurance Provider Name : \(self.insuranceProviderName)")
        print("      Insurance Type : \(self.insuranceType)")
        print("      Total Days : \(totalDays())")
        print("      Insurance Rate : \(insuranceRate.currencyInsuranceRate())")
        print("      Total Installment to Pay : \(insurancePayment().currency())")
    }
}
