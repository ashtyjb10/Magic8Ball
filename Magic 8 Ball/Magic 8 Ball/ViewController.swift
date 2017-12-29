//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ashton Schmidt on 11/3/17.
//  Copyright © 2017 Ashton Schmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let answerArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomIndexNumber : Int = 0
    
    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad()
    {
        getAnswer()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerButtonPressed(_ sender: Any)
    {
        getAnswer()
    }
    func getAnswer()
    {
        randomIndexNumber = Int(arc4random_uniform(5))
        magicBall.image = UIImage(named: answerArray[randomIndexNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        getAnswer()
    }
    
}
