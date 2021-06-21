//
//  pageFavoris.swift
//  PageFavoris
//
//  Created by min gao on 18/06/2021.
//

import SwiftUI

struct PageFavoris: View {
    
    let grid = [GridItem(.adaptive(minimum: 200, maximum: 200))]
    
    @State private var rechercheText:String = ""
    @State private var siRecherche = false
    
    @State private var showModal : Bool = false
    @State private var inter : Bool = true
    @State private var exter : Bool = true
    @State private var prix : Double = 100.0
    @State private var duree : Double = 1000.0
    @State private var nBPerso : Int = 50
    @State private var searchText : String = ""
    
    @Binding var tabSelection: Int

    
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                HStack {
                    TextField("", text:$rechercheText)
                        .padding()
                        .padding(.horizontal)
                        .background(Color(.systemGray5))
                        .overlay(
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.leading)
                                    .onTapGesture(perform:{
                                                siRecherche = true})
                            }
                            .foregroundColor(.gray)
                        )
                }
                
                LazyVGrid(columns: grid, spacing: 30) {
                    ForEach(activites.filter({$0.favori == true  && ($0.inter == inter || $0.exter == exter) && $0.prix <= prix && $0.duree <= Int(duree) && $0.nBPerso <= nBPerso && (rechercheText.isEmpty ? true : $0.titreActivite.contains(rechercheText))}))
                {activite in
                        NavigationLink(
                            destination: PageDetailActivite(activite: activite),
                            label: {
                                activiteRow(activite: activite)
                            })
                    }
                    
                }
                
            }
            .navigationBarTitle("Mes Favoris")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Filtre"){
                showModal.toggle()
            }.sheet(isPresented: $showModal, content: {
                    Filtre(dismiss: $showModal,  inter : $inter, exter : $exter, prix: $prix, duree : $duree, nBPerso: $nBPerso
                )
            }))
        }
    }
}





struct PageFavoris_Previews: PreviewProvider {
    static var previews: some View {
        PageFavoris(tabSelection: .constant(2))
    }
}




