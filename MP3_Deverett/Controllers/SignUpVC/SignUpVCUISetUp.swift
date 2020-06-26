//
//  SignUpVC - SetUp.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/17/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

extension SignUpVC {
    
    func setUpFullNameTextField() {
        fullNameTextField.placeholder = "Full Name"
        fullNameTextField.font = UIFont(name: "Chalkduster", size: 15)
        fullNameTextField.backgroundColor = .white
    }
    
    func setUpEmailTextField() {
        emailTextField.placeholder = "Email"
        emailTextField.font = UIFont(name: "Chalkduster", size: 15)
        emailTextField.backgroundColor = .white
    }
    
    func setUpUsernameTextField() {
        usernameTextField.placeholder = "Username"
        usernameTextField.font = UIFont(name: "Chalkduster", size: 15)
        usernameTextField.backgroundColor = .white
    }
    
    func setUpPasswordTextField() {
        passwordTextField.placeholder = "Password"
        passwordTextField.font = UIFont(name: "Chalkduster", size: 15)
        passwordTextField.backgroundColor = .white
        passwordTextField.isSecureTextEntry = true
    }
    
    func setUpSignUpButton() {
        signUpButton.layer.cornerRadius = 15
        signUpButton.clipsToBounds = true
    }
    
}
