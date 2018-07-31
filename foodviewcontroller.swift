//
//  foodviewcontroller.swift
//  shopapp
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class foodviewcontroller: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableView:UITableView!
    
    //商家資料陣列
    var Foods:[Food] = [
        Food(name:"西堤牛排-頭份尚順店",type:"美食123",location:"苗栗縣頭份鎮尚順路77號",image:"teasy"),
        Food(name:"西堤牛排-桃園南華店",type:"美食",location:"桃園市龍潭區中正路398號",image:"teasy"),
        Food(name:"西堤牛排-基隆信一店",type:"美食",location:"基隆市中正區信一路177號15樓",image:"teasy"),
        Food(name:"西堤牛排-台北重慶南店",type:"美食",location:"台北市中山區南京東路2段11號2樓",image:"teasy"),
        Food(name:"西堤牛排-台北南京東店",type:"美食",location:"台北市大安區羅斯福路二段79號2樓",image:"teasy"),
        Food(name:"西堤牛排-台北羅斯福店",type:"美食",location:"台北市大安區復興南路一段152號3樓",image:"teasy"),
        Food(name:"西堤牛排-台北復興南店",type:"美食",location:"台北市內湖區瑞光路517號2樓",image:"teasy"),
        Food(name:"西堤牛排-台北南港店",type:"美食",location:"台北市南港區忠孝東路七段369號C1棟9樓",image:"teasy"),
        Food(name:"西堤牛排-板橋中山店",type:"美食",location:"新北市板橋區中山路一段6號2樓",image:"teasy"),
        Food(name:"西堤牛排-新店民權店",type:"美食",location:"新北市新店區民權路82號2樓",image:"teasy"),
        Food(name:"西堤牛排-中和板南店",type:"美食",location:"新北市中和區板南路661號",image:"teasy")
        
        
    ]
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]

    //表格式圖區塊數
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //回傳區塊中的列數
        return Foods.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? RestaurantDetailTableViewCel
        
    
           //設定Cell
            cell?.nameLabel?.text = Foods[indexPath.row].name
            cell?.thumbnailImageView?.image = UIImage(named: Foods[indexPath.row].image)
            cell?.locationLabel?.text = Foods[indexPath.row].location
            cell?.typeLabel?.text = Foods[indexPath.row].type
            cell?.thumbnailImageView?.layer.cornerRadius = 35.0
            cell?.thumbnailImageView?.clipsToBounds = true
        
           return cell!
        }

    
    var seguedetail:String!

    @IBOutlet weak var showdetailNavigationtitle: UINavigationItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //設置UI介面
        setupUI()
        
        //次頁Navigationtitle改變
        if seguedetail == "showfoodstoredetail"{
            showdetailNavigationtitle.title = "美食饗宴"
            
            
        }
        else if  seguedetail == "showstapleshopdetail"{
            showdetailNavigationtitle.title = "名產購物"
        }
        else if seguedetail == "showhoteldetail"{
            showdetailNavigationtitle.title = "旅遊住宿"
        }
        
       
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showfoodstoredetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! RestaurantDetailViewController
                destinationController.food = Foods[indexPath.row]
            }
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showRestaurantDetail" {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                
//                
//                let destinationController = segue.destination as! RestaurantDetailViewController
//                destinationController.restaurantImage = restaurantImages[indexPath.row]
//            }
//        }
//    }
    

    
}


//設置UI介面
extension foodviewcontroller{
    private func setupUI(){
        //1.設置導航欄
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        
        //設置右側的Item
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named:"search"), for: .normal)
        //換圖顏色 QRBtn.setImage(UIImage(named:"location"), for: .highlighted)
        searchBtn.sizeToFit()
        let searchItem = UIBarButtonItem(customView: searchBtn)
        navigationItem.rightBarButtonItems = [searchItem]
    }
    
}
