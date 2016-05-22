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

//    let name = "antonio"; //valid name
//    let password = "12345678" //valid password
//
//
//    func procesLogin(user: User, callback: CallbackLogin){
//
//        // Create a queue
//        let workingQueue = dispatch_queue_create("dummy_queue", nil)
//
//        // Dispatch to the newly created queue. GCD take the responsibility for most things.
//        dispatch_async(workingQueue) {
//            // Async work in workingQueue
//            NSThread.sleepForTimeInterval(5) // Simulate for 5 secs executing time
//
//            dispatch_async(dispatch_get_main_queue()) {
//                // Return to main queue, update UI here
//                self.sendResponse(user, callback: callback);
//            }
//        }
//    }
//
//
//    func sendResponse(user: User, callback: CallbackLogin){
//
//        if chekCredentials(user) {
//            callback.onResultLogin(LoginResult.SUCCESS);
//        }else{
//            callback.onResultLogin(LoginResult.ERROR);
//        }
//    }
//
//
//    private func chekCredentials(user: User) -> Bool{
//        return self.name == user.name && self.password == user.password;
//    }


    func signInUser(user: User, callback: CallbackLogin){
        fireBaseRepo.signIn(user, callback: callback)
    }

    func signUpUser(user: User, callback: CallbackLogin){
        fireBaseRepo.signUp(user, callback: callback)
    }
}