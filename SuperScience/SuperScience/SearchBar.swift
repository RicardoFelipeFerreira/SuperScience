//
//  SearchBar.swift
//  SuperScience
//
//  Created by Lucas Santos on 14/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class SearchBar: UISearchBar {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.layer.borderColor = UIColor(red: 34.0/255.0, green: 98.0/255.0, blue: 171.0/255.0, alpha: 1.0).cgColor
        self.layer.borderWidth = 1
    }
    
    
  

}
