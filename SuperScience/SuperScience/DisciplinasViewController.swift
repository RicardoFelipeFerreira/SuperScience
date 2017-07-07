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
    
    var disciplinas = ["Física", "Química", "Biologia", "Sexo "]
    var disciplinaSelecionada: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return disciplinas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.disciplinaImage.image = #imageLiteral(resourceName: "rick")
        cell.disciplinaLabel.text = disciplinas[indexPath.row]
        
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
///Button Cancel
   //searchBarCancelButton = true
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        disciplinas = ["Física", "Química", "Biologia", "Sexo "]
        if searchText == "" {
            table.reloadData()
            return
        }
        disciplinas = disciplinas.filter({ $0.uppercased().contains(searchText.uppercased())  })
        table.reloadData()
    }
    
}
