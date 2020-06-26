//
//  FeedVCFunctions.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import Firebase
import TableFlip

extension FeedVC {
    
    func getSocialIDs() {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            guard let socialsDict = snapshot.value as? [String: [String: String]] else {
                print("Error")
                return
            }
            self.socialIDs = []
            for (socialID, _) in socialsDict {
                self.socialIDs.append([socialID])
            }
            self.tableView.reloadData()
            let tableAnimation = TableViewAnimation.Cell.fade(duration: 1.0)
            self.tableView.animate(animation: tableAnimation)
        }
    }
    
    func setUpSocialImage(socialImageURL: String, cell: SocialTableViewCell) {
        let storageRef = Storage.storage().reference(forURL: socialImageURL)
        storageRef.downloadURL(completion: { (url, error) in
            if url != nil {
                do {
                    let imageData = try Data(contentsOf: url!)
                    cell.socialImage.image = UIImage(data: imageData as Data)
                } catch let error {
                    print(error)
                }
            } else {
                cell.socialImage.image = UIImage(named: "defaultSocialImage")
            }
        })
    }
    
    func setUpSocialName(socialID: String, cell: SocialTableViewCell) {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == socialID {
                    cell.socialName.text = socialInfo["name"]
                    cell.socialName.font = UIFont(name: "Chalkduster", size: 15)
                    cell.socialName.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
    func setUpSocialHost(socialID: String, cell: SocialTableViewCell) {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == socialID {
                    cell.socialHost.text = socialInfo["host"]
                    cell.socialHost.font = UIFont(name: "Chalkduster", size: 15)
                    cell.socialHost.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
    func setUpSocialDate(socialID: String, cell: SocialTableViewCell) {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == socialID {
                    cell.socialDate.text = socialInfo["date"]
                    cell.socialDate.font = UIFont(name: "Chalkduster", size: 10)
                    cell.socialHost.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
    func setUpNumberInterested(socialID: String, cell: SocialTableViewCell) {
        let db = Database.database().reference()
        let socialsRef = db.child("Socials")
        socialsRef.observe(DataEventType.value) { snapshot in
            let socialsDict = snapshot.value as? [String: [String: String]]
            for (ID, socialInfo) in socialsDict! {
                if ID == socialID {
                    cell.interestedLabel.text = socialInfo["numberInterested"]
                    cell.interestedLabel.font = UIFont(name: "Chalkduster", size: 15)
                    cell.interestedLabel.adjustsFontSizeToFitWidth = true
                }
            }
        }
    }
    
}
