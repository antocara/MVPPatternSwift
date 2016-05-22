//
//  String.swift
//  mvpSwift
//
//  Created by Antonio Carabantes Millán on 22/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


extension String {

    func isValidEmail(aEmail: NSString) -> Bool{
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"

        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx);
        return emailTest.evaluateWithObject(aEmail);
    }
}