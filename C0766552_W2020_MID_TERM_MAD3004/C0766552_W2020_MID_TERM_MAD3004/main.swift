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

/*c1.display()
c2.display()*/

