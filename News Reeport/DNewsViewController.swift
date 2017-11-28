//
//  DNewsViewController.swift
//  News Reeport
//
//  Created by muqorrobinaimar on 11/23/17.
//  Copyright © 2017 muqorrobin aimar. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class DNewsViewController: UIViewController {

    @IBOutlet weak var idBerita: UILabel!
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var tgl: UILabel!
    @IBOutlet weak var isiBerita: UILabel!
    
    var passBerita:String?
    var passJudul:String?
    var passTgl:String?
    var passIsi:String?
    
    
    override func viewDidLoad() {
        idBerita.text = passBerita!
        judul.text = passJudul!
        tgl.text = passTgl!
        isiBerita.text = passIsi!
        
        
        super.viewDidLoad()
        
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
