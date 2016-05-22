//
//  RegisterUseCase.swift
//  mvpSwift
//
//  Created by Antonio Carabantes Millán on 22/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation

class RegisterUseCase{

    /**
     Execute login process in server
     */
    func executeRegister(user: User, callback: CallbackLogin){
        DataRepository().signUpUser(user, callback: callback);
    }
    
}