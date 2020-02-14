//
//  main.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var i1 = Internet(billId: "INTB0001", billDate: <#T##Date#>, billType: .Internet, providerName: "Rogers", internetGBUsed: 500, internetRate: <#T##Int#>)

var i2 = Internet(billId: "INTB0002", billDate: <#T##Date#>, billType: .Internet, totalBillAmount: <#T##Double#>, providerName: "Rogers", internetGBUsed: 400, internetRate: <#T##Int#>)

var h1 = Hydro(billId: "HYDB0001", billDate: <#T##Date#>, billType: .Hydro, totalBillAmount: <#T##Double#>, agencyName: "Planet Energy", unitConsumed: 29, hydroRate: <#T##Int#>)

var h2 = Hydro(billId: "HYDB0001", billDate: <#T##Date#>, billType: .Hydro, totalBillAmount: <#T##Double#>, agencyName: "Bruce Power", unitConsumed: 29, hydroRate: <#T##Int#>)

var h3 = Hydro(billId: "HYDB0001", billDate: <#T##Date#>, billType: .Hydro, totalBillAmount: <#T##Double#>, agencyName: "", unitConsumed: <#T##Int#>, hydroRate: <#T##Int#>)

var m1 = Mobile(billId: "MOBB0001", billDate: <#T##Date#>, billType: .Mobile, totalBillAmount: <#T##Double#>, mobileManufacturerName: "Apple Inc. iPhone X MAX+", planName: "LTE+3G 9.5GB Promo Plan", mobileNumber: 9012345678, internetGBUsed: 4, minuteUsed: 230, mobileRate: <#T##Int#>)
