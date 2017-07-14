//
//  GameViewController.swift
//  SuperScience
//
//  Created by Ricardo Ferreira on 14/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var shouldAutorotate: Bool { return true}
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { return .landscapeLeft }
    
//    open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { get }

 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
