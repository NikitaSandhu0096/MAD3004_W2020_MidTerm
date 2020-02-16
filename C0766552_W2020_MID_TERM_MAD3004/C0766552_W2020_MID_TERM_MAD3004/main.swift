//
//  main.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//var i1 = Internet(billId: "INTB0001", billDate: "Saturday, 19 October, 2019", billType: .Internet, providerName: "Rogers", internetGBUsed: 500, internetRate: 0.5)

//var i2 = Internet(billId: "INTB0002", billDate: "String", billType: .Internet, providerName: "Rogers", internetGBUsed: 400, internetRate: 0.9)

//var i3 = Internet(billId: "INTB0003", billDate: "String", billType: .Internet, providerName: "Rogers", internetGBUsed: 350, internetRate: 0.7)

//var h1 = Hydro(billId: "HYDB0001", billDate: "String", billType: .Hydro, agencyName: "Planet Energy", unitConsumed: 29, hydroRate: 1.1)

//var h2 = Hydro(billId: "HYDB0002", billDate: "String", billType: .Hydro, agencyName: "Bruce Power", unitConsumed: 29, hydroRate: 1.2)

//var m1 = Mobile(billId: "MOBB0001", billDate: "String", billType: .Mobile, mobileManufacturerName: "Apple Inc.", planName: "LTE+3G 9.5GB Promo Plan", mobileNumber: 9753142860, internetGBUsed: 4, minuteUsed: 230, mobileRate: 0.3)

var i1 = Internet(billId: "INTB0001", billDate: "19/10/2019", billType: .Internet, providerName: "Rogers", internetGBUsed: 500, internetRate: 0.5)

var i2 = Internet(billId: "INTB0002", billDate: "20/11/2019", billType: .Internet, providerName: "Rogers", internetGBUsed: 400, internetRate: 0.9)

var i3 = Internet(billId: "INTB0003", billDate: "21/12/2018", billType: .Internet, providerName: "Rogers", internetGBUsed: 350, internetRate: 0.7)

var h1 = Hydro(billId: "HYDB0001", billDate: "16/11/2018", billType: .Hydro, agencyName: "Planet Energy", unitConsumed: 29, hydroRate: 1.1)

var h2 = Hydro(billId: "HYDB0002", billDate: "15/09/2018", billType: .Hydro, agencyName: "Bruce Power", unitConsumed: 29, hydroRate: 1.2)

var m1 = Mobile(billId: "MOBB0001", billDate: "06/06/2019", billType: .Mobile, mobileManufacturerName: "Apple Inc.", planName: "LTE+3G 9.5GB Promo Plan", mobileNumber: 9753142860, internetGBUsed: 4, minuteUsed: 230, mobileRate: 0.3)

i1.display()
i2.display()
i3.display()
h1.display()
h1.display()
m1.display()

