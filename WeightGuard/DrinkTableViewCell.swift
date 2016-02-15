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
    var checkedGlasses : [Int : Bool] = [ 1 : false, 2 : false, 3 : false, 4 : false, 5 : false, 6 : false, 7 : false, 8 : false]

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style : style, reuseIdentifier : reuseIdentifier)

//        for  index in 1...8{
//            checkedGlasses = [index : false]
//        }
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

    //MARK: Actions

    @IBAction func addWater(sender: UIButton) {
        let id : Int? =  NSNumberFormatter().numberFromString(sender.restorationIdentifier!)?.integerValue

        if id == nil{
            print ("id is nil")
        }

        let full = "new-icon-full-glass"
        let empty = "new-icon-empty-glass"

        let filledGlass = UIImage(named: full)
        let emptyGlass = UIImage(named: empty)

        print("empty \(sender.imageView?.image?.isEqual(emptyGlass))")
        print("full \(sender.imageView?.image?.isEqual(filledGlass))")


        if(id > 1 && id <= checkedGlasses.count){
            if (checkedGlasses[id!-1] != false){
                checkedGlasses[id!] = true
                sender.setImage(filledGlass, forState: .Normal)
                return
            }else{
                print("previous glass unchecked")
                return
            }
        }else{
            checkedGlasses[id!] = true
            sender.setImage(filledGlass, forState: .Normal)
        }



    }
    
}
