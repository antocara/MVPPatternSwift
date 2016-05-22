//
//  GetMessageUsesCase.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


class LoginUseCase{

    /**
     Execute login process in server
     */
    func executeLogin(user: User, callback: CallbackLogin){
        DataRepository().signInUser(user, callback: callback);
    }

}