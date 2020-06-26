//
//  FeedVC.swift
//  MP3_Deverett
//
//  Created by Sam Deverett on 6/17/20.
//  Copyright © 2020 Sam Deverett. All rights reserved.
//

import UIKit
import ChameleonFramework

class FeedVC: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GradientColor(gradientStyle: UIGradientStyle.topToBottom, frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height),  colors: [FlatNavyBlue(), FlatBlue(), FlatPowderBlue()])
    }

}
