//
//  Customer.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : IDisplay{
    var customerId : Int
    var firstName : String
    var lastName : String
    var fullName : String
    var email : String
    var bills : Dictionary<Int, Any>
    var totalAmountToPay : Double
    
    init(customerId : Int, firstName : String, lastName : String, fullName : String, email : String, bills : Dictionary<Int, Any> , totalAmountToPay : Double) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.email = email
        self.bills = bills
        self.totalAmountToPay = totalAmountToPay
    }
    
    func display() {
        
        print("Customer ID : \(customerId)")
        print("Customer Full Name : \(fullName)")
        print("Customer Email ID : \(email)")
        print("Total Bill Amount to Pay : \(totalAmountToPay)")
    }
}
