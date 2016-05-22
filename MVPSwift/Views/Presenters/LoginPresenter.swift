//
//  LoginPresenter.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


class LoginPresenter{

    var nameView: LoginView;
    var loginUseCase: LoginUseCase;


    init(nameView: LoginView){
        self.nameView = nameView;
        self.loginUseCase = LoginUseCase();
    }


    func actionInitLogin(user: User){
        self.nameView.showLoading();
        if validForm(user){
            self.loginUseCase.executeLogin(user, callback: self);
        }else{
            self.onError("Invalid Email, please insert an valid email")
        }
    }

    func validForm(user: User) -> Bool{
        var isValid = false

        if let emailForm = user.email where !emailForm.isEmpty{
            isValid = emailForm.isValidEmail(emailForm)
        }

        return isValid
    }
}


//MARK: - DELEGATE CALLBACKLOGIN -
extension LoginPresenter: CallbackLogin{

    func onResultLogin(result: LoginResult){
        if LoginStatusResult.SUCCESS == result.statusResult{
            self.onSuccess(result.message);
        }else if LoginStatusResult.ERROR == result.statusResult{
            self.onError(result.message);
        }
    }


    func onSuccess(message: String){
        self.nameView.hideLoading();
        self.nameView.openAlertController(message);
    }

    func onError(errorMessage: String){
        self.nameView.hideLoading();
        self.nameView.showErrorMessage(errorMessage);
    }
}
