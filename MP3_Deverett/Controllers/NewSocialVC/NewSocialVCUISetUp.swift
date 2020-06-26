//
//  NewSocialVCUISetUp.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

extension NewSocialVC {
    
    func setUpNavigationBar() {
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Chalkduster", size: 15)!]
    }
    
    func setUpSocialNameTextField() {
        socialNameTextField.placeholder = "Name"
        socialNameTextField.font = UIFont(name: "Chalkduster", size: 15)
        socialNameTextField.backgroundColor = .white
    }
    
    func setUpSocialDescriptionTextView() {
        socialDescriptionTextView.font = UIFont(name: "Chalkduster", size: 15)
        socialDescriptionTextView.backgroundColor = .white
    }
    
}
