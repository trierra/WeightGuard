//
//  ChallengeCompleteCell.swift
//  WeightGuard
//
//  Created by Oksana Chuiko on 1/29/16.
//  Copyright © 2016 Oksana Chuiko. All rights reserved.
//

import UIKit

class ChallengeCompleteCell: UITableViewCell {
    let cellMessage = UILabel()
    var label : UILabel = UILabel()
    var textField : UITextField = UITextField()



    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "ChallengeCompleteCell")

        self.label = UILabel(frame: CGRectMake(35, 30, 310, 80))
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.numberOfLines = 3

        label.textAlignment = NSTextAlignment.Center
        self.addSubview(label)
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
