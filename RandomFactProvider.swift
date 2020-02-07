//
//  RandomFactProvider.swift
//  RandomFactGenerator
//
//  Created by Preferred Customer on 2/6/20.
//  Copyright © 2020 humza choudry. All rights reserved.
//

import Foundation

struct RandomFactProvider {
    
    let factsArray = [ "Ostriches can run faster than horses",
              "Ants stretch when they wake up in the morning",
              "Olympic gold medals are actually made mostly of silver",
              "You are born with 300 bones; by the time you are an adult you will have 206",
              "It takes about 8 minutes for the light from the Sun to reach Earth",
              "Some bamboo plants can grow almost a meter in just one day",
              "The state of Florida is bigger than England",
              "Some penguins can leap 2-3 meters out of the water",
              "On average, it takes 66 days to form a new habit",
              "Mammoths still walked the Earth when the Great Pyramid was being built"
          ]
    
    func randomFact() -> String {
        
        //random number from a given range(of array).
      let randomNumberGenerator = Int.random(in: 0 ... factsArray.count - 1)
        
        return factsArray[randomNumberGenerator]
    }
    
    
}
