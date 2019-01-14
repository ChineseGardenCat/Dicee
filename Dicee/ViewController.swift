//
//  ViewController.swift
//  Dicee
//
//  Created by MATTEW MA on 14/1/19.
//  Copyright © 2019 Mathhew MA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndexInt1 : Int = 0
    var randomDiceIndexInt2 : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        modifyRandomDiceIndex()
    }

    @IBAction func rollDiceButtom(_ sender: UIButton) {
        // this will excuted when the button gets pressed
        modifyRandomDiceIndex()
    }
    
    func modifyRandomDiceIndex () {
        randomDiceIndexInt1 = Int.random(in: 0 ... 5)
        randomDiceIndexInt2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndexInt1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndexInt2])
    }
    
}

