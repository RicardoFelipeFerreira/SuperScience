//
//  MyNavController.swift
//  SuperScience
//
//  Created by Ricardo Ferreira on 14/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class MyNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
//        self.navigationBar.backgroundColor =  UIColor(red: 34.0/255.0,green: 98.0/255.0, blue: 171.0/255.0, alpha: 1.0)
//        self.navigationController?.navigationBar.isTranslucent = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  

}
