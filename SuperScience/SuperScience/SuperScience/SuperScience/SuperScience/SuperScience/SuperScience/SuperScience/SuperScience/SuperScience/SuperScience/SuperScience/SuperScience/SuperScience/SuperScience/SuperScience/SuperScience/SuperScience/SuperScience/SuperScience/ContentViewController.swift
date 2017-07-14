//
//  ContentViewController.swift
//  SuperScience
//
//  Created by Eduardo de Almeida Oliveira on 13/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var frames = [UIImage]()
        
        for i in 0...148
        {
            frames.append(UIImage(named: "frame_\(i)")!)
        }
        
        self.headerImageView.animationDuration = 5
        self.headerImageView.animationRepeatCount = 0
        self.headerImageView.animationImages = frames
        
        headerImageView.startAnimating()
        
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
