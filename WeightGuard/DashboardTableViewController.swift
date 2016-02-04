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
    let challengeCompleteCellidentifiyer = "ChallengeCompleteCell"

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
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {

            //TODO: for complete challenge cell
//            let cell = tableView.dequeueReusableCellWithIdentifier(challengeCompleteCellidentifiyer, forIndexPath: indexPath) as! ChallengeCompleteCell
//            cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)
//            cell.label.text = "1 You have completed challengde for today! Keep it up!"
//            cell.layoutMargins = UIEdgeInsetsZero

            let cell = tableView.dequeueReusableCellWithIdentifier(sportCellIdentifiyer, forIndexPath: indexPath) as! SportTableViewCell
            cell.titleLabel.text = "Exercises goal"
            return setupDashboardCell(cell)

        } else if indexPath.row == 1  {
            let cell = tableView.dequeueReusableCellWithIdentifier(foodCellIdentifiyer, forIndexPath: indexPath) as! FoodTableViewCell
            cell.titleLabel.text = "Food goal"
            return setupDashboardCell(cell)

        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier(drinkCellIdentifiyer, forIndexPath: indexPath) as! DrinkTableViewCell
            cell.titleLabel.text = "Drink goal"
            return setupDashboardCell(cell)
        }
    }

    func setupDashboardCell(cell : UITableViewCell) -> UITableViewCell{
        cell.backgroundColor =  UIColor(red: 249/255, green: 244/255, blue: 232/255, alpha: 1)
        cell.layoutMargins = UIEdgeInsetsZero
        cell.separatorInset = UIEdgeInsetsZero
        return cell
    }

    //MARK: TableView cells
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.registerClass(ChallengeCompleteCell.self, forCellReuseIdentifier: "ChallengeCompleteCell")
    }

    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        tableView.separatorInset = UIEdgeInsetsZero
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return tableView.frame.height/3
    }

}
