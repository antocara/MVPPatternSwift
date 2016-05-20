//
//  User.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


class User: NSObject {

    var name: String?
    var password: String?


    init(name: String, password: String) {
        super.init()
        self.name = name;
        self.password = password;
    }
}