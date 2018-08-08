//
//  MemberWalletViewController.swift
//  shopapp
//
//  Created by mac on 2018/8/7.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class MemberWalletViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "我的錢包"
        let leftBar = UIBarButtonItem(title: "",style: .plain,target:self,action:nil)
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = leftBar
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }    

}
