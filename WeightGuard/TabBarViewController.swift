//
//  TabBarViewController.swift
//  WeightGuard
//
//  Created by Oksana Chuiko on 1/29/16.
//  Copyright © 2016 Oksana Chuiko. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().translucent = false
        UITabBar.appearance().barTintColor = UIColor(red: 237/255, green: 232/255, blue: 210/255, alpha: 1)
        UITabBar.appearance().tintColor = UIColor.blackColor()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
