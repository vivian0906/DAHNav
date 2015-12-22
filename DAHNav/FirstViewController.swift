//
//  FirstViewController.swift
//  DAHNav
//
//  Created by shou wei on 11/12/15.
//  Copyright © 2015 shou wei. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var barItem: UITabBarItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UIApplication.sharedApplication().statusBarStyle = .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }


}

