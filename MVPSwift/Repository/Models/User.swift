//
//  User.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


class User: NSObject {

    var email: String?
    var password: String?


    init(email: String, password: String) {
        super.init()
        self.email = email;
        self.password = password;
    }
}