//
//  activiteRow.swift
//  Pageactivite
//
//  Created by min gao on 16/06/2021.
//

import SwiftUI

struct activiteRow: View {
    
    var activite : Activite

    var body: some View {
        VStack{
            Image(activite.imageActivite).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150).cornerRadius(20)
            Text("\(activite.titreActivite)")
                .foregroundColor(Color.blue)
            }
            
    
        }
    }


struct activiteRow_Previews: PreviewProvider {
    static var previews: some View {
        activiteRow(activite:activites[0])
    }
}
