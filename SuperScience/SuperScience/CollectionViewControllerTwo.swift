//
//  CollectionViewControllerTwo.swift
//  SuperScience
//
//  Created by Ricardo Ferreira on 11/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class CollectionViewControllerTwo: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet weak var MyCollectionViewCellTwo: UICollectionView!
    

    var imagesTwo = [ "ForcaEletrica", "CampoEletrico", "DDP", "Capacitor"]
    var labelsTwo = ["Força de Coulomb", "Campo Elétrico", "Ddp", "Capacitores"]
    
    var disciplina: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.MyCollectionViewCellTwo.delegate = self
        self.MyCollectionViewCellTwo.dataSource = self
        
        //Title
        //self.title = disciplina
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesTwo.count
    }
    
    
    func  collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cellTwo", for: indexPath) as! MyCollectionViewCellTwo
        
        
        cell.myImageViewCellTwo.image = UIImage(named: imagesTwo[indexPath.row])
        cell.myLabelViewCellTwo.text = labelsTwo[indexPath.row]
        
        //deixar arredondado
        //cell.layer.cornerRadius = 20
        cell.myImageViewCellTwo.layer.cornerRadius = 8
        cell.myImageViewCellTwo.clipsToBounds = true
        
        
        //cell.backgroundColor = indexPath.row % 2 == 0 ? .red : .yellow
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetailFinal", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
//        print(layout.sectionInset)
        
        
        let collectionSize = CGSize (width: self.view.frame.width/2 - 15,  height: self.view.frame.width/2 - 15)
        
        
        return collectionSize
        
        //        let cellsAcross: CGFloat = 3
        //        let spaceBetweenCells: CGFloat = 0.2
        //        let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
        //        return CGSize(width: dim, height: dim)
    }
    
    
    
}
