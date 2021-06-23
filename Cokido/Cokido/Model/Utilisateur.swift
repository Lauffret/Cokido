//
//  Utilisateur.swift
//  COkidoEssaie
//
//  Created by Léa AUFFRET on 15/06/2021.
//

import Foundation


struct Utilisateur {
    var nom : String
    var age : Int
    var image : String
    var classe : String
    var type : Type 
    var profil :ProfilApprentissage {
        switch type {
        case .Kinesthesique:
            return kine
        case .Auditif:
            return audi
        case .Visuel:
            return visu
        }
    }

}


