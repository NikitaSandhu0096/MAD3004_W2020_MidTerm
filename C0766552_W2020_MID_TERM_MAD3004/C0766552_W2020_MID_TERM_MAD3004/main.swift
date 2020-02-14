//
//  main.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var i1 = Internet(billId: "INTB0001", billDate: <#T##Date#>, billType: .Internet, providerName: "Rogers", internetGBUsed: 500, internetRate: 0.5)

var i2 = Internet(billId: "INTB0002", billDate: <#T##Date#>, billType: .Internet, providerName: "Rogers", internetGBUsed: 400, internetRate: 0.9)

var i3 = Internet(billId: "INTB0003", billDate: <#T##Date#>, billType: .Internet, providerName: "Rogers", internetGBUsed: 350, internetRate: 0.7)

var h1 = Hydro(billId: "HYDB0001", billDate: <#T##Date#>, billType: .Hydro, agencyName: "Planet Energy", unitConsumed: 29, hydroRate: 1.1)

var h2 = Hydro(billId: "HYDB0002", billDate: <#T##Date#>, billType: .Hydro, agencyName: "Bruce Power", unitConsumed: 29, hydroRate: 1.2)

var m1 = Mobile(billId: "MOBB0001", billDate: <#T##Date#>, billType: .Mobile, mobileManufacturerName: "Apple Inc.", planName: "LTE+3G 9.5GB Promo Plan", mobileNumber: 9753142860, internetGBUsed: 4, minuteUsed: 230, mobileRate: 0.3)

