//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jonathan Chong on 4/10/18.
//  Copyright © 2018 Jonathan Chong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber : Int = 0
    
    let askArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAskImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        updateAskImages()
    }
    

    func updateAskImages() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: askArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateAskImages()
    }

}

