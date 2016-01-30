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

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.layoutMargins = UIEdgeInsetsZero
        tableView.separatorInset = UIEdgeInsetsZero

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

            let cell = tableView.dequeueReusableCellWithIdentifier("ChallengeCompleteCell", forIndexPath: indexPath) as! ChallengeCompleteCell
            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)
            cell.label.text = "You have completed challengde for today! Keep it up!"
            cell.layoutMargins = UIEdgeInsetsZero


//            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default
//                , reuseIdentifier: sportCellIdentifiyer)
//            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)

        return cell

        } else if indexPath.section == 1 {
            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default
                , reuseIdentifier: foodCellIdentifiyer)
            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)


            cell.layoutMargins = UIEdgeInsetsZero

            return cell

        } else {
            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default
                , reuseIdentifier: drinkCellIdentifiyer)
            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)

            cell.layoutMargins = UIEdgeInsetsZero

            return cell
        }
    }

    //MARK: TableView cells
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.registerClass(ChallengeCompleteCell.self, forCellReuseIdentifier: "ChallengeCompleteCell")
    }

    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        tableView.separatorInset = UIEdgeInsetsZero
    }

}
