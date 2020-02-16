//
//  Extension.swift
//  C0766552_W2020_MID_TERM_MAD3004
//
//  Created by Nikita Sandhu on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension String{
    func emailValid() -> Bool{
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}

extension Int{
    func mobileValid() -> Bool{
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
}
