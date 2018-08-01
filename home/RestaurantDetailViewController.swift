//
//  RestaurantDetailViewController.swift
//  shopapp
//
//  Created by mac on 2018/7/27.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var restaurantImageView:UIImageView!
    
    @IBOutlet var tableView:UITableView!
    
    var food: Food!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //載入視圖後，做其他設定
//        restaurantImageView.image = UIImage(named: restaurant.image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return 3
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! RestaurantDetailTableViewCell
        
        // Configure the cell...
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "店名："
            cell.valueLabel.text = food.name
        case 1:
            cell.fieldLabel.text = "類型："
            cell.valueLabel.text = food.type
        case 2:
            cell.fieldLabel.text = "地址："
            cell.valueLabel.text = food.location
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        
        
        
        return cell
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
