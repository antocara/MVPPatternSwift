//
//  DataRepository.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


class DataRepository {

    var fireBaseRepo: IFireBaseRepository;


    init() {
        self.fireBaseRepo = FireBaseRepository.instance
    }

    func signInUser(user: User, callback: CallbackLogin){
        fireBaseRepo.signIn(user, callback: callback)
    }

    func signUpUser(user: User, callback: CallbackLogin){
        fireBaseRepo.signUp(user, callback: callback)
    }
}