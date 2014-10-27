//
//  ViewController.swift
//  ShoeConverter
//
//  Created by admin on 10/27/14.
//  Copyright (c) 2014 parikshit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* The ! at the end means we are unwrapping an optional */

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    
    @IBOutlet weak var convertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = menShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        convertedShoeSizeLabel.hidden = false
        let updateShoeSizeString = "\(integerFromTextField)"
        convertedShoeSizeLabel.text = updateShoeSizeString
        
    }
    
    


}

