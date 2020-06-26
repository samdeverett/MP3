//
//  DetailVC.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/19/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit
import Firebase

class DetailVC: UIViewController {
    
    var socialID: String!
//    var currentNumberInterested: Int!
    
    @IBOutlet weak var socialImage: UIImageView!
    
    @IBOutlet weak var socialName: UILabel!
    
    @IBOutlet weak var socialDate: UILabel!
    
    @IBOutlet weak var socialHost: UILabel!
    
    @IBOutlet weak var socialDescription: UITextView!
    
    @IBOutlet weak var likedImage: UIImageView!
    
    @IBOutlet weak var numberInterested: UILabel!
    
    @IBOutlet weak var interestedButton: UIButton!
    
    @IBAction func interestedButtonPressed(_ sender: Any) {
        interestedButton.isUserInteractionEnabled = false
        incrementNumberInterested()
        interestedButton.backgroundColor = .systemGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSocialImage()
        setUpSocialName()
        setUpSocialDate()
        setUpSocialHost()
        setUpSocialDescription()
        setUpNumberInterested()
        setUpInterestedButton()
    }

}
