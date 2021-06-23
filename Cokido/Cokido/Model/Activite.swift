//
//  Activites.swift
//  COkidoEssaie
//
//  Created by Léa AUFFRET on 15/06/2021.
//

import Foundation
import SwiftUI


struct Activite : Identifiable{
    var id = UUID()
    
    var imageActivite : String
    var titreActivite : String
    var description : String
    var etapes : [String]
    var materiel : [Ingredient:String] // [Ingredient:String]
    var duree: Int // minutes
    var ageMin :Int
    var ageMax :Int
    var inter : Bool
    var exter : Bool
    var favori : Bool
    var apprentissage : String
    var faite :Bool
    var type : Type // enum liste fermé
    var prix : Double
    var nBPerso : Int
    var feedback: [Feedback ]

}

enum Type : String, CaseIterable,Equatable{
    case Visuel = "Visuel"
    case Kinesthesique = "Kinesthésique"
    case Auditif = "Auditif"
    
}




