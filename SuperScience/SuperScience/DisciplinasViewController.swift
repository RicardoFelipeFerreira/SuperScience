//
//  DisciplinasViewController.swift
//  SuperScience
//
//  Created by Ricardo Ferreira on 05/07/17.
//  Copyright © 2017 Ricardo Ferreira. All rights reserved.
//

import UIKit

class DisciplinasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    
    @IBOutlet weak var table: UITableView!
    
    var disciplinas = ["Física", "Biologia", "Química"]
    var icons = ["fisica", "biologia", "quimica"]
    var sets = ["setaVermelho", "setaVerde", "setaAmarelo"]
    var colors = [UIColor(red: 254.0/255.0, green: 241.0/255.0, blue: 241.0/255.0, alpha: 1.0),
                  UIColor(red: 242.0/255.0, green: 250.0/255.0, blue: 246.0/255.0, alpha: 1.0),
                  UIColor(red: 253.0/255.0, green: 253.0/255.0, blue: 243.0/255.0, alpha: 1.0)]
    var textcolor = [UIColor(red: 178.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0),
                     UIColor(red: 1.0/255.0, green: 115.0/255.0, blue: 55.0/255.0, alpha: 1.0),
                     UIColor(red: 166.0/255.0, green: 182.0/255.0, blue: 12.0/255.0, alpha: 1.0)]
    var iconsSelecionado: String?
    var disciplinaSelecionada: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    self.navigationController?.navigationBar.isTranslucent = false
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return disciplinas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.disciplinaImage.image = UIImage.init(named: icons[indexPath.row])
            
        cell.disciplinaLabel.text = disciplinas[indexPath.row]
        
        cell.disciplinaLabel.textColor = textcolor[indexPath.row]
        
        cell.setaImage?.image = UIImage.init(named: sets[indexPath.row])
        
        cell.backgroundColor = colors[indexPath.row]    
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        disciplinaSelecionada = disciplinas[indexPath.row]
        
        performSegue(withIdentifier: "showDisciplina", sender: self)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDisciplina" {
            
            let destination = segue.destination as! ViewController
            
            destination.disciplina = disciplinaSelecionada
        }
    
    
    }

    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        disciplinas = ["Física", "Química", "Biologia", "Matemática"]
        if searchText == "" {
            table.reloadData()
            return
        }
        disciplinas = disciplinas.filter({ $0.uppercased().contains(searchText.uppercased())  })
        table.reloadData()
    }
    
}
