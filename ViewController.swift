//
//  ViewController.swift
//  RandomFactGenerator
//
//  Created by Preferred Customer on 2/5/20.
//  Copyright © 2020 humza choudry. All rights reserved.
//

import UIKit


extension UIColor {
  static func random () -> UIColor {
    // alpha = opaque or see though background color is. 1 = fully visible.
    // .random generates random numbers in the specified range.
    return UIColor(
      red: CGFloat.random(in: 0...1),
      green: CGFloat.random(in: 0...1),
      blue: CGFloat.random(in: 0...1),
      alpha: 1.0)
  }
}

class ViewController: UIViewController {

    // variable that gives access to the attributes setting of the label.
    @IBOutlet weak var randomFactLabel: UILabel!
  
    // Generates a random fact from data model.
    let randomFactProvider = RandomFactProvider()
    
    
    // When view is loaded into memory (not displayed to user), this is when viewDidLoad is called automatically.
    override func viewDidLoad() {
        super.viewDidLoad()
        randomFactLabel.text = randomFactProvider.randomFact()
    }
    
    // Interface builder (IB) function. Called every time the button is pressed.
    @IBAction func showAnotherFunFact() {
        // Change fact every time button is pressed.
        randomFactLabel.text = randomFactProvider.randomFact()
        
        //Change background color everytime button is pressed.
        view.backgroundColor = UIColor.random();
    }
    
    
}

