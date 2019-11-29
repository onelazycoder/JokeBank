//
//  DefinitionViewController.swift
//  Joke Bank
//
//  Created by onelazycoder on 29.11.2019.
//  Copyright © 2019 onelazycoder. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var jokeTextView: UITextView!
    
    var joke = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = joke
        
//        var jokes = ["Joke number 1", "Awesome joke", "Joke 3", "HAHAHA"]
//        if joke == "Joke number 1" {
            jokeTextView.text = joke + "\n" + joke + "\n" + joke + "\n"
//        }
        
    }
}
