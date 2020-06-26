//
//  DetailVCSetUp.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/20/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit
import Firebase

extension DetailVC {
    
    func setUpSocialImage() {
        let socialImageURL = "gs://mdb-socials-dea32.appspot.com/socialImages/\(socialID!)"
        let storageRef = Storage.storage().reference(forURL: socialImageURL)
        storageRef.downloadURL(completion: { (url, error) in
            if url != nil {
                do {
                    let imageData = try Data(contentsOf: url!)
                    self.socialImage.image = UIImage(data: imageData as Data)
                } catch let error {
                    print(error)
                }
            } else {
                self.socialImage.image = UIImage(named: "defaultSocialImage")
            }
        })
    }
    
    func setUpSocialName() {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == self.socialID {
                    self.socialName.text = socialInfo["name"]
                    self.socialName.font = UIFont(name: "Chalkduster", size: 25)
                    self.socialName.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
    func setUpSocialDate() {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == self.socialID {
                    self.socialDate.text = socialInfo["date"]
                    self.socialDate.font = UIFont(name: "Chalkduster", size: 15)
                    self.socialDate.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }

    func setUpSocialHost() {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == self.socialID {
                    self.socialHost.text = socialInfo["host"]
                    self.socialHost.font = UIFont(name: "Chalkduster", size: 20)
                    self.socialHost.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
    func setUpSocialDescription() {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == self.socialID {
                    self.socialDescription.text = socialInfo["description"]
                    self.socialDescription.font = UIFont(name: "Chalkduster", size: 15)
                }
            }
        }
    }
    
    func setUpNumberInterested() {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == self.socialID {
                    self.numberInterested.text = socialInfo["numberInterested"]
                    self.numberInterested.font = UIFont(name: "Chalkduster", size: 25)
                    self.numberInterested.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
    func setUpInterestedButton() {
        interestedButton.layer.cornerRadius = 15
        interestedButton.clipsToBounds = true
    }
        
}
