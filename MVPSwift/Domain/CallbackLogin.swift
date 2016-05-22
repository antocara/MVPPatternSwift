//
//  CallbackGetMessage.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


enum LoginStatusResult{
    case SUCCESS
    case ERROR
}

struct LoginResult {
    
    var statusResult: LoginStatusResult
    var message: String


    init(status: LoginStatusResult, message: String){
        self.statusResult = status
        self.message = message
    }
}


protocol CallbackLogin {

    func onResultLogin(result: LoginResult);

}