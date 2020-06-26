//
//  SignUpVCFunctions.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import Firebase

extension SignUpVC {
    
    func handleSignUp() {
            let fullName = fullNameTextField.text!
            let email = emailTextField.text!
            let username = usernameTextField.text!
            let password = passwordTextField.text!
            let auth = Auth.auth()
            auth.createUser(withEmail: email, password: password) { (user, error) in
                guard error == nil else {
                    print(error)
                    self.displayAlert(title: "Oh no!", message: "There was an error signing you up.")
                    return
                }
                let db = Database.database().reference()
                let usersNode = db.child("Users")
                let newUserId = usersNode.childByAutoId().key
                let userNode = usersNode.child(newUserId!)
                userNode.setValue(["full name": fullName, "email": email, "username": username])
                self.performSegue(withIdentifier: "fromSignUpVCToFeedVC", sender: self)
            }
        }
        
        func displayAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(defaultAction)
            self.present(alert, animated: true, completion: nil)
        }
    
}
