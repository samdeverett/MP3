//
//  NewSocialVC.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/17/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

class NewSocialVC: UIViewController {
    
    var hostUsername: String!
    
    @IBOutlet weak var socialImage: UIImageView!
    
    @IBOutlet weak var socialNameTextField: UITextField!
    
    @IBOutlet weak var socialDescriptionTextView: UITextView!
    
    @IBOutlet weak var socialDatePicker: UIDatePicker!
    
    @IBAction func selectImageButtonPressed(_ sender: Any) {
        showImagePickerControllerActionSheet()
    }
    
    @IBAction func createSocialButtonPressed(_ sender: Any) {
        handleCreateSocial()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBar()
        setUpSocialNameTextField()
        setUpSocialDescriptionTextView()
        getHost()
    }

}
