//
//  ViewController.swift
//  SuperScience
//
//  Created by Eduardo de Almeida Oliveira on 06/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    var disciplina: String?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        //self.tabBarController?.tabBar.tintColor = UIColor.orange
//        
//        
//        self.title = disciplina
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//}
//
import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var myCollectionViewCell: UICollectionView!
    
    var images = [ "bike", "raio", "tesla"]
    
    var disciplina: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myCollectionViewCell.delegate = self
        self.myCollectionViewCell.dataSource = self
    
        //Title
          self.title = disciplina
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    
    func  collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! MyCollectionViewCell
        
        //set images
        cell.myImageViewCell.image = UIImage(named: images[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.view.frame.width/2 - 40, height: self.view.frame.width/2 - 40)
    }
}
