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
    private lazy var bills = [Int : Bill]()
    var totalAmountToPay : Double = 0.0
    
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
    
    func display() {
        print("Customer ID : \(self.customerId)")
        print("Customer Full Name : \(name())")
        print("Customer Email ID : \(self.email)")
        print("------Bill Information------")
        print("***************************")
        for(billId, bill) in bills{
            print("Bill ID : \(billId)")
            print("Bill Date : \(bill.billDate)")
            print("Bill Type : \(bill.billType)")
            print("Bill Amount : \(bill.totalBillAmount)")
            
            switch bill.billType {
                
            case type.Internet:
                print("Bill Amount : ")
                print("Provider Name : ")
                print("Internet Usage : ")
                print("Internet Rate : ")
                
            case type.Mobile:
                print("Manufacturer Name : ")
                print("Plan Name : ")
                print("Mobile Number : ")
                print("Internet Usage : ")
                print("Minutes Usage : ")
                print("Plan Rate : ")
                print("Internet Rate : ")
            
            case type.Hydro:
                print("Agency Name : ")
                print("Unit Consumed : ")
                
            default:
                ""
            }
        }
        
        print("***************************")
        print("Total Bill Amount to Pay : \(self.totalAmountToPay)")
    }
}
