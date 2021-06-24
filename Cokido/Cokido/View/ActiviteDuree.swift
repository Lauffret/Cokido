//
//  ActivteDuree.swift
//  Cokido
//
//  Created by Léa AUFFRET on 24/06/2021.
//

import SwiftUI

struct ActiviteDuree: View {
    
    @EnvironmentObject var data: Data
    
    var body: some View {
        VStack(alignment : .leading){
            ForEach(Type.allCases, id: \.self){ type in
                Text(" \(dureeAct(typeA: type , mesActivites: data.activites ))  en activités \( type.rawValue )").padding(2)
                
            }
            
        }
    }
}

struct ActiviteDuree_Previews: PreviewProvider {
    static var previews: some View {
        ActiviteDuree().environmentObject(Data())
    }
}


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

