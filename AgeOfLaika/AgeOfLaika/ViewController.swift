//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by admin on 10/27/14.
//  Copyright (c) 2014 parikshit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var humanAgeLabel: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsPressed(sender: UIButton) {
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanAgeLabel.text.toInt()! * 7)"
        humanAgeLabel.resignFirstResponder()
    }

}

