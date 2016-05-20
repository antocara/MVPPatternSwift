//
//  CallbackGetMessage.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


enum LoginResult{

    case SUCCESS
    case ERROR
}



protocol CallbackLogin {

    func onResultLogin(result: LoginResult);

}