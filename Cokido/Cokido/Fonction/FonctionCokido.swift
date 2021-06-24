//
//  FonctionCokido.swift
//  Cokido
//
//  Created by Léa AUFFRET on 24/06/2021.
//

import Foundation


func dureeAct(typeA : Type, mesActivites : [Activite] ) -> String  {
    var duree : Double = 0
    var dureeT : String = ""
    
    for i in mesActivites{
        
        if i.type == typeA && i.faite {
            duree += Double(i.duree)
        }
    }
    
    let heure = Int(duree) / 60
    let minute =  Int (round( (duree / 60.0 -  Double(  Int(duree) / 60)) * 60.0 ))
    
    if(duree < 60.0){
       dureeT = "\(Int(duree))  min"
    }else{
        dureeT = "\( heure ) h \( minute )"
        
    }
    
    return dureeT
}



func resultatTest(kines:Int, auditif:Int, visuel:Int ) -> ProfilApprentissage {
    if auditif >= kines && auditif > visuel{
        return audi
    }else if kines > auditif && kines >= visuel{
        return kine
    }else{
        return visu
    }
}
