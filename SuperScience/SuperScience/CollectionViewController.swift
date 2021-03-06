







import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var myCollectionViewCell: UICollectionView!
    
    var images = [ "mecanica", "termologia", "optica", "ondas", "eletrostatica", "eletrodinamica", "moderna"]
    var labels = ["Mecânica", "Termodinâmica", "Óptica", "Ondas", "Eletrostática", "Eletrodinâmica", "Moderna"]
    
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
        
        
        cell.myImageViewCell.image = UIImage(named: images[indexPath.row])
        cell.myLabelViewCell.text = labels[indexPath.row]
        
        //deixar arredondado
//        cell.layer.cornerRadius = 2
        cell.myImageViewCell.layer.cornerRadius = 8
        cell.myImageViewCell.clipsToBounds = true
        
        
//        cell.backgroundColor = indexPath.row % 2 == 0 ? .red : .yellow
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
         let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        print(layout.sectionInset)
        
        
        let collectionSize = CGSize (width: self.view.frame.width/2 - 15,  height: self.view.frame.width/2 - 15)
        
        return collectionSize
        
//        let cellsAcross: CGFloat = 3
//        let spaceBetweenCells: CGFloat = 0.2
//        let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
//        return CGSize(width: dim, height: dim)
    }
    
    
    
}
