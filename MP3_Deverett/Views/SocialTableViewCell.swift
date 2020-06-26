//
//  SocialTableViewCell.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/19/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

class SocialTableViewCell: UITableViewCell {
    
    @IBOutlet weak var socialImage: UIImageView!
    
    @IBOutlet weak var socialName: UILabel!
    
    @IBOutlet weak var socialHost: UILabel!
    
    @IBOutlet weak var socialDate: UILabel!
    
    @IBOutlet weak var interestedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
