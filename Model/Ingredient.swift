//
//  Ingredient.swift
//  CokidoPreso
//
//  Created by Léa AUFFRET on 17/06/2021.
//

import Foundation

struct Ingredient : Identifiable, Hashable{
    
    var id = UUID()
    var nom:String
    var image :String = ""
}
