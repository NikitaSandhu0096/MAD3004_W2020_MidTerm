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
    var fullName : String = ""
    var email : String
    private lazy var bills = [String : Bill]()
    var totalAmountToPay : Double = 0.0
    
    init(customerId : String, firstName : String, lastName : String, email : String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
   /* subscript(code : String) -> Bill?{
        get{
            self.bills[code]
        }
        set(newValue){
            self.bills.updateValue(newValue!, forKey: code)
        }
    }*/

    func name() -> String{
        self.fullName = "\(self.firstName) \(self.lastName)"
        return self.fullName
    }
    
  /*  func setBills(code : String, bills : Bill) {
        self.bills.updateValue(bills, forKey: code)
    } */
    
    func display() {
        print("Customer ID : \(self.customerId)")
        print("Customer Full Name : \(name())")
        print("Customer Email ID : \(self.email)")
        print("------Bill Information------")
        print("***************************")
        print(self.bills)
        print("Total Bill Amount to Pay : \(self.totalAmountToPay)")
    }
}
