//
//  HomeLocationViewController.swift
//  shopapp
//
//  Created by mac on 2018/8/2.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class HomeLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //標題
        self.navigationItem.title = "定位搜尋"
        
        let leftBar = UIBarButtonItem(title: "",style: .plain,target:self,action:nil)

        self.navigationController?.navigationBar.topItem?.backBarButtonItem = leftBar

        // Do any additional setup after loading the view.
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
