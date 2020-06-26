//
//  FeedVC - UISetUp.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/19/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit
import ChameleonFramework

extension FeedVC {
    
    func setUpBackgrounds() {
        self.view.backgroundColor = GradientColor(gradientStyle: UIGradientStyle.topToBottom, frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height),  colors: [FlatNavyBlue(), FlatBlue(), FlatPowderBlue()])
        self.tableView.backgroundColor = UIColor.clear
    }
    
    func setUpSignOutButton() {
        signOutButton.setTitleTextAttributes( [NSAttributedString.Key.font : UIFont(name: "Chalkduster", size: 15)!], for: .normal)
    }
    
    func setUpNavigationBar() {
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Chalkduster", size: 20)!]
    }
    
}
