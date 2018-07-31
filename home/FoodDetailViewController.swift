//
//  FoodDetailViewController.swift
//  shopapp
//
//  Created by mac on 2018/7/26.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {
    @IBOutlet var restaurantImgaeView:UIImageView!
    var restaurantImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantImgaeView.image = UIImage(named:restaurantImage)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
