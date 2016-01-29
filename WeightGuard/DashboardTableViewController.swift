//
//  DashboardTableViewController.swift
//  WeightGuard
//
//  Created by Oksana Chuiko on 1/21/16.
//  Copyright © 2016 Oksana Chuiko. All rights reserved.
//

import UIKit

class DashboardTableViewController: UITableViewController  {
    let sportCellIdentifiyer = "SportCell"
    let foodCellIdentifiyer = "FoodCell"
    let drinkCellIdentifiyer = "DrinkCell"

    let swiftBlogs = ["Ray Wenderlich", "NSHipster", "iOS Developer Tips", "Jameson Quave", "Natasha The Robot", "Coding Explorer", "That Thing In Swift", "Andrew Bancroft", "iAchieved.it", "Airspeed Velocity"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default
                , reuseIdentifier: sportCellIdentifiyer)
//            cell.backgroundColor = UIColor( red: 0xF9, green: 0xF4, blue: 0xE8, alpha: 0)
            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)

        return cell

        } else if indexPath.section == 1 {
            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default
                , reuseIdentifier: foodCellIdentifiyer)
            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)

            return cell

        } else{
            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default
                , reuseIdentifier: drinkCellIdentifiyer)
            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)

            return cell
        }
    }

    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView //recast your view as a UITableViewHeaderFooterView

        header.contentView.backgroundColor = UIColor(red: 194/255, green: 189/255, blue: 168/255, alpha: 1)
        header.textLabel!.textColor = UIColor(red: 156/255, green: 152/255, blue: 144/255, alpha: 1)
        header.textLabel!.textAlignment = NSTextAlignment.Center
//        header.alpha = 0.5 //make the header transparent
    }



    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
