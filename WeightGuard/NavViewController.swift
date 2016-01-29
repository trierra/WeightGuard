//
//  NavViewController.swift
//  WeightGuard
//
//  Created by Oksana Chuiko on 1/28/16.
//  Copyright © 2016 Oksana Chuiko. All rights reserved.
//

import UIKit

class NavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.navigationBar.barStyle = UIBarStyle.Default
        self.navigationBar.translucent = false
        self.navigationBar.barTintColor = UIColor(red: 0/255, green: 167/255, blue: 180/255, alpha: 1)

        self.navigationBar.tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)]


//        UINavigationBar.appearance().backgroundColor = UIColor(red: 0/255, green: 167/255, blue: 180/255, alpha: 1.1)
//        UIBarButtonItem.appearance().tintColor = UIColor.blackColor()
//        UITabBar.appearance().backgroundColor = UIColor(red: 0/255, green: 167/255, blue: 180/255, alpha: 1.0);


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
