//
//  IFireBaseRepository.swift
//  mvpSwift
//
//  Created by Antonio Carabantes Millán on 21/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


protocol IFireBaseRepository {

    func signIn(user: User, callback: CallbackLogin)
    func signUp(user: User, callback: CallbackLogin)
}