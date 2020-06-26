//
//  DetailVCFunctions.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import Firebase

extension DetailVC {
    
    func incrementNumberInterested() {
        let currentNumberInterested = Int(self.numberInterested.text!)
        let db = Database.database().reference()
        let socialRef = db.child("Socials/\(String(describing: socialID!))")
        let numberInterestedUpdate = ["/numberInterested": String(currentNumberInterested! + 1)]
        socialRef.updateChildValues(numberInterestedUpdate)
        likedImage.image = UIImage(systemName: "hand.thumbsup.fill")
    }
    
}
