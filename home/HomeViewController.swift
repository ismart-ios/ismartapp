//
//  HomeViewController.swift
//  shopapp
//
//  Created by mac on 2018/7/23.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
   
    @IBOutlet var tableView:UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as! foodviewcontroller
        controller.seguedetail = segue.identifier
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //設置UI介面
        setupUI()
        self.navigationItem.titleView = UIView()
        //設置導航欄
        
    }
    
}

//設置UI介面
extension HomeViewController{
    private func setupUI(){
        //1.設置導航欄
        setupNavigationBar()
        
        
        
    }
    
    private func setupNavigationBar(){
   
        //設置左側的Item
        /*let btn = UIButton()
        btn.setImage(UIImage(named:"searchbar"), for: .normal)
        btn.sizeToFit()*/
//        var searchController:UISearchController!
        
//        searchController = UISearchController(searchResultsController:nil)
//        searchController.searchBar.placeholder = "你要找什麼？"
//        navigationItem.searchController = searchController
        
        //設置右側的Item
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named:"search"), for: .normal)
        //換圖顏色 QRBtn.setImage(UIImage(named:"location"), for: .highlighted)
        searchBtn.sizeToFit()
        let searchItem = UIBarButtonItem(customView: searchBtn)
        //首頁搜索按鈕觸發事件
        searchBtn.addTarget(self, action: #selector(Homesearch), for: UIControlEvents.touchUpInside)
        
        //掃一掃
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named:"QRCode"), for: .normal)
       //換圖顏色 QRBtn.setImage(UIImage(named:"location"), for: .highlighted)
        qrcodeBtn.sizeToFit()
        let qrcodeItem = UIBarButtonItem(customView: qrcodeBtn)
        qrcodeBtn.addTarget(self, action: #selector(HomeqrcodeBtn), for: UIControlEvents.touchUpInside)
        
        //定位
        let locationBtn = UIButton()
        locationBtn.setImage(UIImage(named:"location"), for: .normal)
        //換圖顏色 QRBtn.setImage(UIImage(named:"location"), for: .highlighted)
        locationBtn.sizeToFit()
        let locationItem = UIBarButtonItem(customView:locationBtn)
        locationBtn.addTarget(self, action: #selector(HomelocationBtn), for: UIControlEvents.touchUpInside)
        
        navigationItem.rightBarButtonItems = [ qrcodeItem, locationItem, searchItem]
        
        
    }
    //首頁搜索按鈕觸發後跳頁
    @IBAction func Homesearch(_ sender:UIBarButtonItem){
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "HomeSearch") as? HomeSearchViewController{
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
    }
    
    //首頁定位按鈕觸發後跳頁
    @IBAction func HomelocationBtn(_ sender:UIBarButtonItem){
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "HomeLocation") as? HomeLocationViewController{
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
    }
    //首頁QR按鈕觸發後跳頁
    @IBAction func HomeqrcodeBtn(_ sender:UIBarButtonItem){
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "HomeQRcode") as? HomeQRcodeViewController{
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
    }
}

