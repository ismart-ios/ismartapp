//
//  MemberClockViewController.swift
//  shopapp
//
//  Created by mac on 2018/8/8.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class MemberClockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "消費記錄"
        let leftBar = UIBarButtonItem(title: "",style: .plain,target:self,action:nil)
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = leftBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
