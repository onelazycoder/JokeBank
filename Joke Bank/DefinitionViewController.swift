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
    
    var joke: Joke?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if joke != nil {
            title = joke?.title
            jokeTextView.text = joke?.text
        }
        
    }
}
