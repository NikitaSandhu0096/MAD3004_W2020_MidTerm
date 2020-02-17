//
//  main.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var i1 = Internet(billId: "INTB0001", billDate: "19/10/2019", billType: .Internet, providerName: "Rogers", internetGBUsed: 500, internetRate: 0.5)

var i2 = Internet(billId: "INTB0002", billDate: "20/11/2019", billType: .Internet, providerName: "Rogers", internetGBUsed: 400, internetRate: 0.9)

var i3 = Internet(billId: "INTB0003", billDate: "21/12/2018", billType: .Internet, providerName: "Rogers", internetGBUsed: 350, internetRate: 0.7)

var h1 = Hydro(billId: "HYDB0001", billDate: "16/11/2018", billType: .Hydro, agencyName: "Planet Energy", unitConsumed: 600, hydroRate: 1.5)

var h2 = Hydro(billId: "HYDB0002", billDate: "15/09/2018", billType: .Hydro, agencyName: "Bruce Power", unitConsumed: 500, hydroRate: 2.5)

var m1 = Mobile(billId: "MOBB0001", billDate: "06/06/2019", billType: .Mobile, mobileManufacturerName: "Apple Inc.", planName: "LTE+3G 9.5GB Promo Plan", mobileNumber: 9753124680, internetGBUsed: 4, minuteUsed: 230, planRate: 0.8, internetRate: 0.9)

/*i1.display()
i2.display()
i3.display()
h1.display()
h2.display()
m1.display()*/

var c1 = Customer(customerId: "C0001", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com")

var c2 = Customer(customerId: "C0002", firstName: "Kamal", lastName: "Kaur", email: "kkaur@yahoo.com")

var c3 = Customer(customerId: "C0003", firstName: "Jyothi", lastName: "Thomas", email: "jthomas@outlook.com")

var c4 = Customer(customerId: "C0004", firstName: "Ajeesha", lastName: "Jacob", email: "ajacob@gmail.com")

c1.addBill(bill: i1, billId: i1.billId)
c1.addBill(bill: h1, billId: h1.billId)
c1.addBill(bill: m1, billId: m1.billId)

c2.addBill(bill: i2, billId: i2.billId)
c2.addBill(bill: h2, billId: h2.billId)

c3.addBill(bill: i3, billId: i3.billId)

/*c1.display()
c2.display()
c3.display()
c4.display()*/

var customers = [String : Customer]()

func addCustomer(customer : Customer, customerId : String) {
    customers.updateValue(customer, forKey: customerId)
}

addCustomer(customer: c1, customerId: c1.customerId)
addCustomer(customer: c2, customerId: c2.customerId)
addCustomer(customer: c3, customerId: c3.customerId)
addCustomer(customer: c4, customerId: c4.customerId)

/*for i in customers{
    i.value.display()
}*/

func getCustomerById(Id : String) {
    if (customers.index(forKey: Id) != nil) {
        customers[Id]?.display()
    }else{
        print("Customer doesn't exist")
    }
}

/*getCustomerById(Id: "C0001")
getCustomerById(Id: "C0002")
getCustomerById(Id: "C0003")
getCustomerById(Id: "C0004")*/

if c1.email.emailValid(){
    getCustomerById(Id: "C0001")
}else{
    print("Enter a vaild email")
}

if c2.email.emailValid(){
    getCustomerById(Id: "C0002")
}else{
    print("Enter a vaild email")
}

if c3.email.emailValid(){
    getCustomerById(Id: "C0003")
}else{
    print("Enter a vaild email")
}

if c4.email.emailValid(){
    getCustomerById(Id: "C0004")
}else{
    print("Enter a vaild email")
}

getCustomerById(Id: "C0005")

