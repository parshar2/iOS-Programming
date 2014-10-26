//
//  ViewController.swift
//  POSTCARD
//
//  Created by admin on 10/21/14.
//  Copyright (c) 2014 parikshit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
    - @IBOutlet : helper for compiler to understand that there is some UI element for this element in the storyboard
    - weak : What kind of pointer is this
    - var : This is going to be a variable
    - messageLabel : identifier of the UILabel
    - : UILabel : specifies the type of the variable
    */
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // Remove the text message
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
    }
}

