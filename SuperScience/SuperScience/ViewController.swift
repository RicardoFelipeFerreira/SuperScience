//
//  ViewController.swift
//  SuperScience
//
//  Created by Eduardo de Almeida Oliveira on 06/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var disciplina: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.tabBarController?.tabBar.tintColor = UIColor.orange
        
        
        self.title = disciplina
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
