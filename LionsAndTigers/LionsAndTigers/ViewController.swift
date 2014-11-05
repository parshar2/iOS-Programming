//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by admin on 10/27/14.
//  Copyright (c) 2014 parikshit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFact: UILabel!


    // Important to initalize an empty array. These are properties - same as global variables
    var myTigers:[Tiger] = []
    var randomIndex = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        println("My Tiger's name is : \(myTiger.name) , its' age is : \(myTiger.age)', its' breed is \(myTiger.breed) and its' image is \(myTiger.image)")
        
        myTiger.chuffNumberOfTimes(3, isLoud: false)
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        randomFact.text = myTiger.randomFact()
        
        myTigers.append(myTiger)
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        myTigers += [secondTiger,thirdTiger,fourthTiger]
     //   myTiger.chuffNumberOfTimes(3)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: AnyObject) {
        
        // Generate a random tiger index and display it
        var index : Int
        
        // Prevent the same image from being generated when next is pressed
        do {
         index = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while ( index == self.randomIndex)
        randomIndex = index
       
        let tiger = myTigers[randomIndex]
        
        // This is a closure to have awesome animation
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCurlDown, animations: {
                    self.myImageView.image = tiger.image
                    self.ageLabel.text = "\(tiger.age)"
                    self.nameLabel.text = tiger.name
                    self.breedLabel.text = tiger.breed
                    self.randomFact.text = tiger.randomFact()
            }, completion: {(finished : Bool) -> () in})
    }
    
    

}

