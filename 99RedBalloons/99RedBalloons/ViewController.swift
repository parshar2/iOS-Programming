//
//  ViewController.swift
//  99RedBalloons
//
//  Created by admin on 11/5/14.
//  Copyright (c) 2014 parikshit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BalloonView: UIImageView!
    
    @IBOutlet weak var BalloonLabel: UILabel!
    
    var balloons: [Balloon] = []
    let numBalloons = 99
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 1...numBalloons {
            var b = Balloon()
            var randNumber = Int(arc4random_uniform(UInt32(4))) + 1
            b.label = "Balloon number : \(i)"
            var imageURL = "RedBalloon" + String(randNumber) + ".jpg"
            b.image = UIImage(named : imageURL)
            balloons += [b]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextButtonClicked(sender: UIBarButtonItem) {
        
    }

}

