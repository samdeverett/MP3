//
//  FeedVCTableView.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/25/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit

extension FeedVC: UITableViewDataSource {
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return socialIDs.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "socialCell", for: indexPath) as! SocialTableViewCell
        let sectionNum = indexPath.section
        let rowNum = indexPath.row
        let socialID = socialIDs[sectionNum][rowNum]
        setUpSocialImage(socialImageURL: "gs://mdb-socials-dea32.appspot.com/socialImages/\(socialID)", cell: cell)
        setUpSocialName(socialID: socialID, cell: cell)
        setUpSocialHost(socialID: socialID, cell: cell)
        setUpSocialDate(socialID: socialID, cell: cell)
        setUpNumberInterested(socialID: socialID, cell: cell)
        return cell
    }
    
}

extension FeedVC: UITableViewDelegate {
        
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    private func tableView(tableView: UITableView, willDisplayCell cell: SocialTableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
      cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
