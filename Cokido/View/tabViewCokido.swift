//
//  tabViewCokido.swift
//  Cokido
//
//  Created by Léa AUFFRET on 19/06/2021.
//

import SwiftUI

struct tabViewCokido: View {
    @State var tabSelection = 1
    var utilisateur: Utilisateur
    var body: some View {
        TabView(selection: $tabSelection) {
            PageFavoris(tabSelection: $tabSelection).tabItem {
                Label(
                    title: { Text("Favoris") },
                    icon: { Image(systemName: "star") }
)
            }.tag(3)
            PageActivites(tabSelection: $tabSelection).tabItem { Image(systemName: "hand.tap")
                Text("Activités")}.tag(1)
            PageCompte(profil: utilisateur, tabSelection: $tabSelection).tabItem { Image(systemName: "person")
                Text("Compte") }.tag(2)
        }
    }
}

struct tabViewCokido_Previews: PreviewProvider {
    static var previews: some View {
        tabViewCokido(utilisateur: utilisateur[0])
    }
}
