//
//  PageDetailActivite.swift
//  Cokido
//
//  Created by Olivier Calmels on 16/06/2021.
//

import SwiftUI

struct PageDetailActivite: View {
    @State var activite: Activite
    
    @State var endroit:String="PROBLEME"
    @State private var showingFavAlert = false // modale favori coché, décoché
    
    var body: some View {
            ScrollView{
                //            VStack générale
                VStack{
                    //                Titre et entête
                    VStack{
//                        Text("\(activite.titreActivite)")
//                            .font(.title)
//                            .padding(.bottom)
                        HStack{
                            Text("\(activite.duree) min")
                                .padding(.leading)
                            Spacer()
                            Text("\(activite.ageMin)-\(activite.ageMax) ans")
                            Spacer()
                            Text("\(endroit)")
                                .padding(.trailing)
                        }
                    }
                    
                    Image("\(activite.imageActivite)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    //                Favori
                    HStack{
                        Spacer()
                        Button(action: {
                            activite.favori.toggle()
                        }, label: {
                            Image(systemName: "\(activite.favori ? "star.fill" : "star")")
                                .padding(.trailing)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color(red: 0 / 255, green: 166 / 255, blue: 255 / 255))
                        })
                    }
                    
                    //            Description
                    
                    HStack {
                        Text("\(activite.description)")
                            .padding(.all)
                        Spacer()
                    }
                    
                    
                    //            Matériel nécessaire
                    VStack{
                        Text("Matériel nécessaire")
                            .font(.title2)
                            .padding(.vertical)
                        HStack{
                            Spacer()
                            VStack(alignment: .leading){
                                //                            ForEach(Array(activite.materiel.keys), id: \.id) { key in
                                ForEach(Array(activite.materiel.keys.sorted(by: { $0.nom < $1.nom })), id: \.id) { key in
                                    
                                    HStack{
                                        Text("\(key.nom)")
                                        Spacer()
                                        if let quantite = activite.materiel[key] {
                                            Text("\(quantite)")
                                        }
                                        //                        Text("\(activite.materiel[key]!)") idem que "if let", mais moins bonne pratique
                                    }
                                }
                            }
                            .padding(.horizontal, 24.0)
                        }
                    }
                    
                    //            Les Etapes
                    VStack {
                        Text("Les étapes")
                            .font(.title2)
                            .padding(.vertical)
                        
                        VStack{
                            ForEach(0..<activite.etapes.count) { indexEtape in
                                HStack{
                                    Text("\(indexEtape+1)-\(activite.etapes[indexEtape])\r")
                                        .minimumScaleFactor(0.1)
                                    Spacer()
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                    //            Apprentissages - Debut
                    VStack {
                        Text("Apprentissages")
                            .font(.title2)
                            .padding(.vertical)
                        
                        HStack {
                            Text("\(activite.apprentissage)")
                                .padding([.leading, .bottom, .trailing])
                            Spacer()
                        }
                    }                // Bouton
                    
                    NavigationLink(
                        destination: PageFeedback(),
                        label: {
                            Text("Noter mes obervations")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(red: 0 / 255, green: 166 / 255, blue: 255 / 255))
                                .cornerRadius(10)
                        }).navigationTitle(Text("\(activite.titreActivite)")).navigationBarTitleDisplayMode(.inline)
                    
                    // NavigationLink - Fin
                }
                .onAppear{
                    endroitString()
                }
            }

    }
    
    func endroitString() {
        if activite.inter && activite.exter {
            endroit = "Int. / Ext."
        } else if activite.inter {
            endroit = "Interieur"
        } else if activite.exter{
            endroit = "Extérieur"
        } else {
            endroit = "ATTENTION PROBLEME"
        }

    }}

struct PageDetailActivite_Previews: PreviewProvider {
    static var previews: some View {
        PageDetailActivite(activite: activites[0])
    }
}
