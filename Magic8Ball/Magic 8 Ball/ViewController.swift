//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Julie Kim on 12/15/17.
//  Copyright © 2017 julie kim. All rights reserved.
//Icons made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>

import UIKit

class ViewController: UIViewController {
    
    //this is so that the image of the ball will change when button pressed
    var randomMagicAnswer : Int = 0
    
    //this array is so that it will get changed to specific answers
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    @IBOutlet weak var magicBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
       updateAnswerImages()
       
    }
    func updateAnswerImages(){
        randomMagicAnswer = Int(arc4random_uniform(5))
        
        magicBallView.image = UIImage(named: answerArray[randomMagicAnswer])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateAnswerImages()
    }
}

