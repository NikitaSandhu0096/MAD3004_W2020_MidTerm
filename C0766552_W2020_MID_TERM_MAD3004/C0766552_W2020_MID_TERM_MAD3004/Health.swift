//
//  Health.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by Nikita Sandhu on 2020-02-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Health : Insurance, CalculateTotalBill{

    override init(insuranceProviderName : String, insuranceType : itype, startDate : String, endDate : String, insuranceRate : Float){
        super.init(insuranceProviderName: insuranceProviderName, insuranceType: insuranceType, startDate: startDate, endDate: endDate, insuranceRate: insuranceRate)
    }
    
    func calculateBill() -> Float {
        let months = Float(totalDays())/30.00
        totalInstallmentToPay = insuranceRate * months
        return totalInstallmentToPay
    }
    
    override func display() {
        super.display()

        print("      Total Installment to Pay : \(insurancePayment().currency())")
    }
}

