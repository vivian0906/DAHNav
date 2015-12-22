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
    
    func setBarItem(){
        
        let titleDict: NSDictionary = [NSBackgroundColorAttributeName: UIColor.whiteColor()]
        barItem.setTitleTextAttributes(titleDict as? [String : AnyObject], forState: UIControlState.Normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBarItem()
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

