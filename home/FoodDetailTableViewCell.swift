//
//  RestaurantDetailTableViewCell.swift
//  shopapp
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCell: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var fieldLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

}

