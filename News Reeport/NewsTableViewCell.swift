//
//  NewsTableViewCell.swift
//  News Reeport
//
//  Created by muqorrobinaimar on 11/23/17.
//  Copyright © 2017 muqorrobin aimar. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var tgl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
