//
//  User.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


class User: NSObject {

    var email: String
    var password: String

    override init() {
        self.email = ""
        self.password = ""
    }

    init(email: String, password: String) {
        self.email = email;
        self.password = password;
    }
}