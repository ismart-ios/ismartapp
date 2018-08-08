//
//  MemberViewController.swift
//  shopapp
//
//  Created by mac on 2018/8/3.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var didReceiveMemoryWaring: UIImageView!
    
    @IBOutlet var myScrollview: UIScrollView!
    
    @IBOutlet weak var memberpicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.hidesBarsOnSwipe = true
//        self.navigationController?.navigationBar.alpha = 0.5
//        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        
        
        self.navigationItem.title = "會員中心"
        //照片圓形
        self.memberpicture.layer.cornerRadius = 42.0
        self.memberpicture.layer.masksToBounds = true
        
       
    }
    
    //會員資料陣列
    var membername = ["我的錢包", "會員充值", "消費記錄", "會員提現", "推薦會員", "帳號設定", "幫助中心", "登出"]
    var memberimage = ["wallet.png", "dollar.png", "clock.png", "withdraw.png", "user.png", "settings.png", "question.png", "logout.png"]
    var mdentities = ["A","B","C","D","E","F","G","H"]
    
    //表格式圖區塊數
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //回傳區塊中的列數
        return membername.count
        
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemberCell") as? MemberTableViewCell
        
        //設定Cell
        cell?.MemberLabel?.text = membername[indexPath.row]
        cell?.meImageView?.image = UIImage(named: memberimage[indexPath.row])

        tableView.tableFooterView = UIView()
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = mdentities[indexPath.row]
        let ViewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(ViewController!, animated: true)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
//
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }

}
