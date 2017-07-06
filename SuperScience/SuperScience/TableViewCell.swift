//
//  TableViewCell.swift
//  SuperScience
//
//  Created by Eduardo de Almeida Oliveira on 06/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var disciplinaImage: UIImageView!
    @IBOutlet weak var disciplinaLabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
