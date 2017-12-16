//
//  ViewController.swift
//  Dice
//
//  Created by Julie Kim on 12/12/17.
//  Copyright © 2017 julie kim. All rights reserved.
//
//DRY: Don't Repeat Yourself
import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //anything in this gets triggered when the screen gets loaded
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        //random number generator between 0-5
        //both sides are now equal to integers which makes x-code happy
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named : diceArray[randomDiceIndex2])
        
    }

}

