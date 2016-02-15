//
//  Challenge.swift
//  WeightGuard
//
//  Created by Oksana Chuiko on 2/12/16.
//  Copyright © 2016 Oksana Chuiko. All rights reserved.
//

import UIKit

class Challenge {

    // MARK: Properties

    var title : String
    var count : Int
    var type : UITableViewCell

    // MARK : Initialization

    init?(title : String, type : UITableViewCell){
        self.title = title
        self.type = type
        self.count = 0

        if(title.isEmpty){
            return nil
        }

    }

}
