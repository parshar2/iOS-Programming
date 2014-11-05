//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by admin on 10/27/14.
//  Copyright (c) 2014 parikshit. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age : Int! = 0
    var name = ""
    var breed = ""
    // Find image by name. Add a default image for future
    var image = UIImage(named: "")
    
    func chuff() {
        println("Tiger: chuff chuff")
    }
    
    func chuffNumberOfTimes ( numberOfTimes : Int) {
        for var chuff = 1 ; chuff <= numberOfTimes ; chuff++ {
            self.chuff()
        }
    }
    
    
    func chuffNumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
    
        for chuffTimes in 1...numberOfTimes {
            if isLoud {
                chuff();
            }
            else {
                println("Tiger: puff puff")
            }
        }
    }
    
    
    func ageInTigerYearsFromAge(regularAge: Int ) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact : String
        
        switch randomNumber {
        case 0:
            randomFact = "The tiger is the biggest species in the cat family"
        case 1:
            randomFact = "The tiger can reach a length of 3.3 meters"
        case 2:
            randomFact = "A group of tigers is known as a 'ambush' or 'streak'"
        default:
            randomFact = ""
        }
        return randomFact
    }
    
    
}
