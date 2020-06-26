//
//  LoginVC - UISetUp.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/16/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

extension LoginVC {
    
    func setUpImage() {
        wavingRobotsImage.contentMode = UIView.ContentMode.scaleToFill
    }
    
    func setUpEmailTextField() {
        emailTextField.placeholder = "Email"
        emailTextField.font = UIFont(name: "Chalkduster", size: 15)
        emailTextField.backgroundColor = .white
    }
    
    func setUpPasswordTextField() {
        passwordTextField.placeholder = "Password"
        passwordTextField.font = UIFont(name: "Chalkduster", size: 15)
        passwordTextField.backgroundColor = .white
        passwordTextField.isSecureTextEntry = true
    }
    
    func setUpLoginButton() {
        loginButton.layer.cornerRadius = 15
        loginButton.clipsToBounds = true
    }
    
}
