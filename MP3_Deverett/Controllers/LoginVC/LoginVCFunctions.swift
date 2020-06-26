//
//  LoginVCFunctions.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import Firebase

extension LoginVC {
    
    func handleLogin() {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        let auth = Auth.auth()
        auth.signIn(withEmail: email, password: password) { (loggedInUser, loginError) in
            guard loginError == nil else {
                self.displayAlert(title: "Oops", message: "There was an error signing you in.")
                return
            }
            self.performSegue(withIdentifier: "fromLoginVCToFeedVC", sender: self)
        }
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func handleSignOut() {
        let auth = Auth.auth()
        do {
            try auth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    
}
