//
//  FeedVC.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/19/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {
    
    var socialIDs: [[String]] = []
    
    @IBOutlet weak var signOutButton: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!

    @IBAction func unwindToFeedVC(unwindSegue: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBackgrounds()
        setUpSignOutButton()
        setUpNavigationBar()
        getSocialIDs()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? DetailVC, let index = tableView.indexPathsForSelectedRows?.first {
            destinationVC.socialID = socialIDs[index.section][index.row]
        }
    }

}
