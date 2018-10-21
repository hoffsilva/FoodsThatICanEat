//
//  Food.swift
//  FoodsThatICanEat
//
//  Created by Hoff Henry Pereira da Silva on 20/10/2018.
//  Copyright © 2018 Hoff Henry Pereira da Silva. All rights reserved.
//

import Foundation

class Food {
    var family: String!
    var foodName: String!
    var restrictionLevel: RestrictionLevel
    
    init(family: String, foodName: String, restrictionLevel: RestrictionLevel) {
        self.family = family
        self.foodName = foodName
        self.restrictionLevel = restrictionLevel
    }
}
