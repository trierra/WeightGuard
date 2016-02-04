//
//  DrinkTableViewCell.swift
//  WeightGuard
//
//  Created by Oksana Chuiko on 1/26/16.
//  Copyright © 2016 Oksana Chuiko. All rights reserved.
//

import UIKit

class DrinkTableViewCell: UITableViewCell {


    @IBOutlet weak var titleLabel: UILabel!

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
