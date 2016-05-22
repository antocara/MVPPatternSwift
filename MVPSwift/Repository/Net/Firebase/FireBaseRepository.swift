//
//  FireBaseRepository.swift
//  mvpSwift
//
//  Created by Antonio Carabantes Millán on 21/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation
import Firebase


class FireBaseRepository: IFireBaseRepository {

    static let instance = FireBaseRepository();

    /**
     Sign In in FireBase
     */
    func signIn(user: User, callback: CallbackLogin){

        FIRAuth.auth()?.signInWithEmail(user.email!, password: user.password!) { (user, error) in

            if let error = error {
                let errorMessage = self.managedError(error);
                callback.onResultLogin(
                    LoginResult(status: LoginStatusResult.ERROR, message: errorMessage))
            }else{
                callback.onResultLogin(
                    LoginResult(status: LoginStatusResult.SUCCESS, message: "Success"))
            }
        }

    }
    
    func signUp(user: User, callback: CallbackLogin){

    }

    /**
     Create error message
     */
    func managedError(error: NSError) -> String{
        var errorMessage = "Unknown error"
        if let errorCode = FIRAuthErrorCode(rawValue: error.code) {
            switch errorCode {
                case .ErrorCodeNetworkError:
                    errorMessage = "A network error occurred"
                case .ErrorCodeUserNotFound:
                    errorMessage = "Sorry, user not found"
                case .ErrorCodeInvalidEmail:
                    errorMessage = "Invalid email, try again"
                case .ErrorCodeWeakPassword:
                    errorMessage = "Iconrrect password, try again"
                default:
                    errorMessage = "Unknown error"
            }
        }

        return errorMessage
    }

     
}
