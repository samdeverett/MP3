//
//  ViewController.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/12/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    @IBOutlet weak var wavingRobotsImage: UIImageView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        handleLogin()
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "toSignUpVC", sender: self)
    }
    
    @IBAction func unwindToLoginVC(unwindSegue: UIStoryboardSegue) {
        handleSignOut()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImage()
        setUpEmailTextField()
        setUpPasswordTextField()
        setUpLoginButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "fromLoginVCToFeedVC", sender: self)
        } else {
            return
        }
    }
    
}

