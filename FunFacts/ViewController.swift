//
//  ViewController.swift
//  FunFacts
//
//  Created by Julian Lavoie on 11/1/16.
//  Copyright © 2016 Julian Lavoie. All rights reserved.
//

import UIKit

let funFacts = FactModel()

class ViewController: UIViewController {

    @IBOutlet weak var funFactsLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactsLabel.text = funFacts.getRandomFact()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func someFact(sender: UIButton) {
        let randomColor = ColorModel().getRandomColor()
         view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactsLabel.text = funFacts.getRandomFact()
    }

}

