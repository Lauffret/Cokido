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
