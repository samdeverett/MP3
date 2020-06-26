//
//  FeedTableVC.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/17/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit
import ChameleonFramework
import Firebase

class FeedTableVC: UITableViewController {
    
    var usersArray: [String] = []
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GradientColor(gradientStyle: UIGradientStyle.topToBottom, frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height),  colors: [FlatNavyBlue(), FlatBlue(), FlatPowderBlue()])
    }
    
    func setUpUsersArray() {
        let db = Database.database().reference()
        let usersRef = db.child("Users")
        usersRef.observe(DataEventType.value, with: { (snapshot) in
            guard let users = snapshot.value as? [String] else {
                return
            }
            self.usersArray = users
        })
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        setUpUsersArray()
//        print(usersArray.count)
//        return usersArray.count
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "socialCell", for: indexPath) as! SocialTableViewCell
        let rowNum = indexPath.row
        cell.socialImage.image = UIImage(named: "wavingRobots")
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }

}
