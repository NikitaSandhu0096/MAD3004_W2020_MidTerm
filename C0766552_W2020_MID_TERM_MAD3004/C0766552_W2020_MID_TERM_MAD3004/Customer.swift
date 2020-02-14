//
//  Customer.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : IDisplay{
    var customerId : String
    var firstName : String
    var lastName : String
    var fullName : String{
        return "\(firstName) \(lastName)"
    }
    var email : String
    var bills = [String : Double]()
    var totalAmountToPay : Double{
        var b = 0.0
        for i in bills{
            b = b + i.value
        }
        return b
    }
    
    init(customerId : String, firstName : String, lastName : String, fullName : String, email : String, bills : [String : Double], totalAmountToPay : Double) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.bills = bills
       // self.totalAmountToPay = totalAmountToPay
    }
    
    func display() {
        print("Customer ID : \(customerId)")
        print("Customer Full Name : \(fullName)")
        print("Customer Email ID : \(email)")
        print("Total Bill Amount to Pay : \(totalAmountToPay)")
    }
}
