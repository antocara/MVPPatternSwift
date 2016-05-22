//
//  LoginController.swift
//  ARCHITEC_ARQ
//
//  Created by Antonio Carabantes Millán on 13/5/16.
//  Copyright © 2016 kibo. All rights reserved.
//

import UIKit

class LoginController: UIViewController {


    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editPass: UITextField!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var labelError: UILabel!


    @IBAction func actionButtonLogin(sender: AnyObject) {
        LoginPresenter(nameView: self).actionInitLogin(self.getUserFromForm())
    }


    @IBAction func actionButtonRegister(sender: AnyObject) {
        LoginPresenter(nameView: self).actionInitRegister(self.getUserFromForm())
    }

}


extension LoginController: LoginView{

    func showLoading(){
        self.loading.hidden = false;
        self.loading.startAnimating();
    }

    func hideLoading(){
        self.loading.hidden = true;
    }

    func openAlertController(message: String) {
        self.cleanForm();

        self.createAlertController(message);
    }

    func cleanForm(){
        self.editName.text = "";
        self.editPass.text = "";
    }

    func showErrorMessage(errorMessage: String){
        self.labelError.hidden = false;
        self.labelError.text = errorMessage;
    }

    func createAlertController(message: String){
        let alertView = UIAlertController(title: "Congratulations", message: "Your credentials are corrects", preferredStyle: .Alert)
        alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        presentViewController(alertView, animated: true, completion: nil)
    }

    func getUserFromForm() -> User{
        let user = User()

        if let email = self.editName.text, let pass = self.editPass.text{
            user.email = email
            user.password = pass
        }

        return user
    }

}

extension LoginController: UITextFieldDelegate{

    func textFieldDidBeginEditing(textField: UITextField){
        self.labelError.hidden = true;
    }


    //change to the next edit when press return keyboard key
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        let nexTag = textField.tag + 1;

        let nextResponder = textField.superview?.viewWithTag(nexTag);

        if let nextResponder = nextResponder{
            nextResponder.becomeFirstResponder();
        }else{
            textField.resignFirstResponder();
        }

        return false;
    }

}


