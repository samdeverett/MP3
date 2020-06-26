//
//  SignUpVC.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/17/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        handleSignUp()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFullNameTextField()
        setUpEmailTextField()
        setUpUsernameTextField()
        setUpPasswordTextField()
        setUpSignUpButton()
    }

}
