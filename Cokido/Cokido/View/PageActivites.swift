//
//  pageActivites.swift
//  Pageactivite
//
//  Created by min gao on 18/06/2021.
//

import SwiftUI
struct PageActivites: View {
    
    @EnvironmentObject var data: Data
    
    let grid = [GridItem(.adaptive(minimum: 200, maximum: 200))]
    
    @State private var rechercheText:String = ""
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
                Spacer()
                SearchBarView(rechercheText: $rechercheText)
                LazyVGrid(columns: grid, spacing: 30) {
                    ForEach(data.activites.filter({ ($0.inter == inter || $0.exter == exter) && $0.prix <= prix && $0.duree <= Int(duree) && $0.nBPerso <= nBPerso && (rechercheText.isEmpty ? true : $0.titreActivite.contains(rechercheText))
                    }
                    )){ activite in
                        NavigationLink(
                            destination: PageDetailActivite(activite: activite),
                            label: {
                                activiteRow(activite: activite).accentColor(.black)
                                
                            })
                    }
                    
                }
                
            }
            .navigationBarTitle("Activités")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Filtre"){
                showModal.toggle()
            }.foregroundColor(Color("BleuCokido")).sheet(isPresented: $showModal, content: {
                Filtre(dismiss: $showModal,  inter : $inter, exter : $exter, prix: $prix, duree : $duree, nBPerso: $nBPerso)
            }))
        }
    }
}
struct PageActivites_Previews: PreviewProvider {
    static var previews: some View {
        PageActivites(tabSelection: .constant(1))
            .environmentObject(Data())
        
    }
}
