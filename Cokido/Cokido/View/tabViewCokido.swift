//
//  tabViewCokido.swift
//  Cokido
//
//  Created by Léa AUFFRET on 19/06/2021.
//

import SwiftUI

struct tabViewCokido: View {
    
    @EnvironmentObject var data: Data
    @State var tabSelection = 1
    var utilisateur: Utilisateur
    
    var body: some View {
        TabView(selection: $tabSelection) {
            PageActivites(tabSelection: $tabSelection).tabItem { Image(systemName: "hand.tap")
                Text("Activités")}.tag(1)
            
            PageFavoris(tabSelection: $tabSelection).tabItem {
                Label(
                    title: { Text("Favoris") },
                    icon: { Image(systemName: "star") }
)
            }.tag(2)
            
            PageCompte(profil: utilisateur, tabSelection: $tabSelection).tabItem { Image(systemName: "person")
                Text("Compte") }.tag(3)
        }
    }
}

struct tabViewCokido_Previews: PreviewProvider {
    static var previews: some View {
        tabViewCokido(utilisateur: utilisateur[0]).environmentObject(Data())
    }
}
