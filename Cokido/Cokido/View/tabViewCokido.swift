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
    @State private var animationLaunch = false
    
    var body: some View {
        ZStack {
            TabView(selection: $tabSelection) {
                PageActivites(tabSelection: $tabSelection).tabItem { Image(systemName: "hand.tap")
                    Text("Activités")}.tag(1)
                
                PageFavoris(tabSelection: $tabSelection).tabItem {
                    Label(
                        title: { Text("Favoris") },
                        icon: { Image(systemName: "star") }
    )
                }.tag(2)
                
                PageCompte(tabSelection: $tabSelection).tabItem { Image(systemName: "person")
                    Text("Compte") }.tag(3)
            }.accentColor(Color("BleuCokido"))
            
            AnimationView(animationLaunch: $animationLaunch).opacity(animationLaunch ? 0 : 1)
        }
        
    }
}

struct tabViewCokido_Previews: PreviewProvider {
    static var previews: some View {
        tabViewCokido().environmentObject(Data())
    }
}
