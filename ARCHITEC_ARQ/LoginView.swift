//
//  LoginView.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 20/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import Foundation


protocol LoginView {

    func showLoading();

    func hideLoading();

    func openAlertController();

    func showErrorMessage(errorMessage: String);
}