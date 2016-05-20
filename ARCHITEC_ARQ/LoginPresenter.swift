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
        self.loginUseCase.executeLogin(user, callback: self);
    }
}


//MARK: - DELEGATE CALLBACKLOGIN -
extension LoginPresenter: CallbackLogin{

    func onResultLogin(result: LoginResult){
        if LoginResult.SUCCESS == result{
            self.onSuccess("");
        }else if LoginResult.ERROR == result{
            self.onError("");
        }
    }


    func onSuccess(message: String){
        self.nameView.hideLoading();
        self.nameView.openAlertController();
    }

    func onError(errorMessage: String){
        self.nameView.hideLoading();
        self.nameView.showErrorMessage("Sorry, credentials are not corrects, try again");
    }
}
