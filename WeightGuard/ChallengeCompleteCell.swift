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
    var textField : UITextField = UITextField()



    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "ChallengeCompleteCell")

        //Initialize Text Field
        self.textField = UITextField(frame: CGRect(x: 119.00, y: 9, width: 216.00, height: 31.00));

        //Add TextField to SubView
        self.addSubview(self.textField)
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
