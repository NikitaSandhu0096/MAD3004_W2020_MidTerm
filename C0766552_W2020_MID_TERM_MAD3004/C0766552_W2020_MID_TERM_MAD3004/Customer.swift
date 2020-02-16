//
//  Customer.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : IDisplay, CalculateTotalBill{
    
    var customerId : String
    var firstName : String
    var lastName : String
    var fullName : String = ""
    var email : String
    private lazy var bills = [String : Bill]()
    var totalAmountToPay : Float = 0.0
    
    init(customerId : String, firstName : String, lastName : String, email : String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    func name() -> String{
        self.fullName = "\(self.firstName) \(self.lastName)"
        return self.fullName
    }
    
    func addBill(bill : Bill, billId : String) {
        bills.updateValue(bill, forKey: billId)
    }
    
    func calculateBill() -> Float {
        for i in bills{
            totalAmountToPay = totalAmountToPay + i.value.totalBillAmount
        }
        return totalAmountToPay
    }
    
    func display() {
        print("Customer ID : \(self.customerId)")
        print("Customer Full Name : \(name())")
        print("Customer Email ID : \(self.email)")
        print("      ----------Bill Information----------")
        print("      ************************************")
        for i in bills{
            i.value.display()
            print("      ************************************")
        }
        if bills.count == 0{
            print("      No Bill Found for the given customer")
        }else{
        print("       Total Bill Amount to Pay : \(calculateBill().currency())")
        }
    }
}
