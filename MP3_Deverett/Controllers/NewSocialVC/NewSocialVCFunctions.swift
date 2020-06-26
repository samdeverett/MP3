//
//  NewSocialVCFunctions.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import Firebase

extension NewSocialVC {
    
    func handleCreateSocial() {
        let image = getSocialImage()
        let name = socialNameTextField.text!
        let host = hostUsername
        let description = getSocialDescription()
        let date = getSocialDate()
        let numberInterested = "0"
        // Add to Database
        let db = Database.database().reference()
        let socialsNode = db.child("Socials")
        let newSocialId = socialsNode.childByAutoId().key
        let socialNode = socialsNode.child(newSocialId!)
        socialNode.setValue(["name": name, "host": host, "description": description, "date": date, "numberInterested": numberInterested])
        // Add to Storage
        let storage = Storage.storage().reference()
        let socialImageNode = storage.child("socialImages/\(String(describing: newSocialId!))")
        socialImageNode.putData(image.jpegData(compressionQuality: 0.1)!)
    }
    
    func getSocialImage() -> UIImage {
        var image: UIImage!
        if socialImage.image != nil {
            image = socialImage.image
        } else {
            image = UIImage(named: "defaultSocialImage")
        }
        return image
    }
    
    func getHost() {
        let currentUserEmail = Auth.auth().currentUser?.email
        let db = Database.database().reference()
        let usersRef = db.child("Users")
        usersRef.observeSingleEvent(of: DataEventType.value) { snapshot in
            guard let usersDict = snapshot.value as? [String: [String: String]] else {
                print("Error")
                return
            }
            for (_, userInfo) in usersDict {
                if userInfo["email"] == currentUserEmail {
                    self.hostUsername = userInfo["username"]!
                }
            }
        }
    }
    
    func getSocialDescription() -> String {
        var description: String!
        if socialDescriptionTextView.text != "Description" {
            description = socialDescriptionTextView.text!
        } else {
            description = ""
        }
        return description
    }
    
    func getSocialDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        return dateFormatter.string(from: socialDatePicker.date)
    }
    
}
