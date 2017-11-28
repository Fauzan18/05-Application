//
//  NewsTableViewController.swift
//  News Reeport
//
//  Created by muqorrobinaimar on 11/23/17.
//  Copyright © 2017 muqorrobin aimar. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NewsTableViewController: UITableViewController {

    var beritaSelected:String?
    var judulSelected:String?
    var tglSelected:String?
    var isiSelected:String?
    
    
    var file = [File]()
    var arrKar = [[String: AnyObject]]()//array data siswa
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //memanggil data json menggunakan alamofire
        Alamofire.request("http://localhost/News/index.php/Api/getNews").responseJSON{ (responseData)-> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)

                if let resData = swiftyJsonVar["data"].arrayObject {
                    self.arrKar = resData as! [[String:AnyObject]]
                }
                if self.arrKar.count > 0 {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrKar.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "user", for: indexPath) as! NewsTableViewCell
        
        // Configure the cell...
        var dict = arrKar[indexPath.row]
        cell.judul.text = dict["judul"] as? String
        cell.tgl.text = dict["tgl"] as? String
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        //mengecek data yang dikirim
//        print("Row \(indexPath.row)selected")
//
//        let task = arrKar[indexPath.row]
//
//        judulSelected = task["judul"] as? String
//        tglSelected = task["tgl"] as? String
//        isiSelected = task["isi_berita"] as? String
//        beritaSelected = task["id_berita"] as? String
//
//
//        performSegue(withIdentifier: "passData", sender: self)
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //mengecek apakah segue nya ada atau  tidak`
//        if segue.identifier == "passData"{
//            //kondisi ketika segue nya ada
//            //mengirimkan data ke detailViewController
//            //        let kirimData = segue.destination as! KontakViewController
//            //mengirimkan data ke masing2 variable
//            //mengirimkan nama wisata
//
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let controller = segue.destination as! DNewsViewController
//                let value = arrKar[indexPath.row]
//
//                controller.passIsi = value["isi_berita"] as? String
//                controller.passTgl = value["tgl"] as? String
//                controller.passJudul = value["judul"] as? String
//                controller.passBerita = value["id_berita"] as? String
//            }
//        }
//    }
}




