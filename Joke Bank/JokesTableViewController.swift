//
//  JokesTableViewController.swift
//  Joke Bank
//
//  Created by onelazycoder on 29.11.2019.
//  Copyright © 2019 onelazycoder. All rights reserved.
//

import UIKit

class JokesTableViewController: UITableViewController {
    
    var jokes = ["Joke number 1", "Awesome joke", "Joke 3", "HAHAHA"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = jokes[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToDefinitionVC", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToDefinitionVC" {
            let definitionVC = segue.destination as! DefinitionViewController
            definitionVC.joke = sender as! String
            
        }
    }

}
