//
//  ViewController.swift
//  ActionButton2
//
//  Created by Victor Castro on 09/17/2022.
//  Copyright (c) 2022 Victor Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actionButton2: ActionButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let twitterImage = UIImage(named: "twitter_icon.png")!
        let plusImage = UIImage(named: "googleplus_icon.png")!
        
        let twitter = ActionButtonItem(title: "Twitter", image: twitterImage)
        twitter.action = { item in print("Twitter...") }
        
        let google = ActionButtonItem(title: "Google Plus", image: plusImage)
        google.action = { item in print("Google Plus...") }
        
        actionButton2 = ActionButton(attachedToView: self.view, items: [twitter, google])
        actionButton2.action = { button in button.toggleMenu() }
        actionButton2.setTitle("+", forState: UIControlState())
        
        actionButton2.backgroundColor = UIColor(red: 238.0/255.0, green: 130.0/255.0, blue: 34.0/255.0, alpha:1.0)
    }
}

