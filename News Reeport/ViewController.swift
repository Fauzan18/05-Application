//
//  ViewController.swift
//  News Reeport
//
//  Created by muqorrobinaimar on 11/23/17.
//  Copyright © 2017 muqorrobin aimar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
        let nilaiUser = etName.text!
        let nilaiEmail = etEmail.text!
        
        if ((nilaiUser.isEmpty) || (nilaiEmail.isEmpty)) {
            //muncul alert dialog
            let alertWarning = UIAlertController(title: "Warning", message: "This is required", preferredStyle: .alert)
            let aksi = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertWarning.addAction(aksi)
            present(alertWarning, animated: true, completion: nil)
            
        }
    }
}
    


