//
//  DisciplinasViewController.swift
//  SuperScience
//
//  Created by Ricardo Ferreira on 05/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class DisciplinasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    
    //    usar gif com UIImage.
    //    let jeremyGif = UIImage.gifImageWithName("funny")
    //    let imageView = UIImageView(image: jeremyGif)
    //    imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
    //    view.addSubview(imageView)
    
    struct Disciplina {
        var name: String
        var icon: String
        var sets: String
        var color: UIColor
        var txtColor: UIColor
        
        init(name: String, icon: String, sets: String, color: UIColor, txtColor: UIColor)
        {
            self.name = name
            self.icon = icon
            self.sets = sets
            self.color = color
            self.txtColor = txtColor
        }
        
    }
    
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    var disciplinas: [Disciplina]!
    //    var disciplinas = ["Fisica", "Biologia", "Quimica"]
    //    var icons = ["fisica", "biologia", "quimica"]
    //    var sets = ["setaVermelho", "setaVerde", "setaAmarelo"]
    
    var isSearching = true
    
    var iconsSelecionado: String?
    var disciplinaSelecionada: Disciplina?
    var copyDisciplinas: [Disciplina]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       // searchBar.backgroundColor = UIColor.red
        
       
        
        let disc1 = Disciplina(name: "Física", icon: "fisica", sets: "setaVermelho", color: UIColor(red: 254.0/255.0, green: 241.0/255.0, blue: 241.0/255.0, alpha: 1.0), txtColor: UIColor(red: 178.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0))
        let disc2 = Disciplina(name: "Biologia", icon: "biologia", sets: "setaVerde", color: UIColor(red: 242.0/255.0, green: 250.0/255.0, blue: 246.0/255.0, alpha: 1.0), txtColor: UIColor(red: 1.0/255.0, green: 115.0/255.0, blue: 55.0/255.0, alpha: 1.0) )
        let disc3 = Disciplina(name: "Química", icon: "quimica", sets: "setaAmarelo", color: UIColor(red: 253.0/255.0, green: 253.0/255.0, blue: 243.0/255.0, alpha: 1.0), txtColor:UIColor(red: 166.0/255.0, green: 182.0/255.0, blue: 12.0/255.0, alpha: 1.0) )
        
        disciplinas = [disc1, disc2, disc3]
        copyDisciplinas = disciplinas
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return disciplinas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.disciplinaImage.image = UIImage(named: disciplinas[indexPath.row].icon)
        
        cell.disciplinaLabel.text = disciplinas[indexPath.row].name
        
        cell.disciplinaLabel.textColor = disciplinas[indexPath.row].txtColor
        
        cell.setaImage?.image = UIImage(named: disciplinas[indexPath.row].sets)
        
        
        
        //        cell.disciplinaImage.image = UIImage.init(named: icons[indexPath.row])
        //
        //        cell.disciplinaLabel.text = disciplinas[indexPath.row]
        //
        //        cell.disciplinaLabel.textColor = textcolor[indexPath.row]
        //
        //        cell.setaImage?.image = UIImage.init(named: sets[indexPath.row])
        
        cell.backgroundColor = disciplinas[indexPath.row].color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        disciplinaSelecionada = disciplinas[indexPath.row]
        
        performSegue(withIdentifier: "show" + (disciplinaSelecionada?.name)!, sender: self)
        
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showFísica" {
            
            let destination = segue.destination as! CollectionViewController
            
            destination.disciplina = disciplinaSelecionada?.name
        }
        if segue.identifier == "showQuímica" {
            
            
        }
        if segue.identifier == "showBiologia" {
            
            
        }
        
        
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        //        var results = [UITextView]()
        //        for subview in searchBar.subviews as [UIView]{
        //            if let textField = subview as? UITextField
        //            {
        //                results +=[textField]
        //            }else {
        //                results +=
        //            }
        //        }
        
        
        //disciplinas = ["Física", "Química", "Biologia"]
        
        if searchText == "" {
            disciplinas = copyDisciplinas
            table.reloadData()
            return
        }
        
        disciplinas = copyDisciplinas.filter({ $0.name.uppercased().contains(searchText.uppercased())  })
        table.reloadData()
    }
    
    
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        isSearching = false
        searchBar.showsCancelButton = false
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        isSearching = true
        searchBar.showsCancelButton = true
        
    }
}
