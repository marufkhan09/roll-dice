//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    var left = 0
    var right = 5
  func   reset(){
      left = 0
      right = 5

    }
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        left = Int.random(in: 0...5)
        right = Int.random(in: 0...5)
        img1.image = diceArray[left]
        img2.image = diceArray[right]
    }



}

