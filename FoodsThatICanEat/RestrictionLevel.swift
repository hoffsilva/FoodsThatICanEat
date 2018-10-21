//
//  RestrictionLevel.swift
//  FoodsThatICanEat
//
//  Created by Hoff Henry Pereira da Silva on 20/10/2018.
//  Copyright © 2018 Hoff Henry Pereira da Silva. All rights reserved.
//

import Foundation

enum RestrictionLevel: String {
    case VERDE = "Reação nula frente ao alimento."
    case AMARELO = "Reação baixa frente ao alimento. Intolerância leve."
    case LARANJA = "Reação média frente ao alimento. Intolerância moderada."
    case VERMELHO = "Reação alta frente ao alimento. Intolêrancia severa."
}
