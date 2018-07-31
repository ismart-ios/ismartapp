//
//  HomeViewController.swift
//  shopapp
//
//  Created by mac on 2018/7/23.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as! foodviewcontroller
        controller.seguedetail = segue.identifier
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //設置UI介面
        setupUI()
        
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
        var searchController:UISearchController!
        
        searchController = UISearchController(searchResultsController:nil)
        searchController.searchBar.placeholder = "你要找什麼？"
        navigationItem.searchController = searchController
        //設置右側的Item
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named:"QRCode"), for: .normal)
       //換圖顏色 QRBtn.setImage(UIImage(named:"location"), for: .highlighted)
        qrcodeBtn.sizeToFit()
        let qrcodeItem = UIBarButtonItem(customView: qrcodeBtn)
        
        
        let locationBtn = UIButton()
        locationBtn.setImage(UIImage(named:"location"), for: .normal)
        //換圖顏色 QRBtn.setImage(UIImage(named:"location"), for: .highlighted)
        locationBtn.sizeToFit()
        let locationItem = UIBarButtonItem(customView:locationBtn)
        
        navigationItem.rightBarButtonItems = [qrcodeItem, locationItem]
    }
}

