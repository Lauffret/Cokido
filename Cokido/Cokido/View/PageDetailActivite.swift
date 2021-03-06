//
//  PageDetailActivite.swift
//  Cokido
//
//  Created by Olivier Calmels on 16/06/2021.
//

import SwiftUI

struct PageDetailActivite: View {
    
    @EnvironmentObject var data: Data
    
    @State var activite: Activite
    @State var feedback : Bool = false
    
    @State var endroit:String = "PROBLEME"
    @State private var showingFavAlert = false // modale favori coché, décoché
    
    var activiteIndex: Int {
            data.activites.firstIndex(where: { $0.id == activite.id })!
        }
    
    
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
                    }.padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                }
                
                Image("\(activite.imageActivite)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                //                Favori
                HStack{
                    Spacer()
                    Button(action: {
                        data.activites[activiteIndex].favori.toggle()
                    }, label: {
                        Image(systemName: "\(data.activites[activiteIndex].favori ? "star.fill" : "star")")
                            .padding(.trailing)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color("BleuCokido"))
                    })
                }
                
                //            Description
                
                HStack {
                    Text("\(activite.description)")
                        .padding(.all)
                    Spacer()
                }.padding()
                
                
                //            Matériel nécessaire
                VStack{
                    Text("Matériel nécessaire")
                        .font(.title2)
                        .padding(.vertical)
                    HStack{
                        VStack(alignment: .leading){
                            //                            ForEach(Array(activite.materiel.keys), id: \.id) { key in
                            ForEach(Array(activite.materiel.keys.sorted(by: { $0.nom < $1.nom })), id: \.id) { key in

                                    if let quantite = activite.materiel[key] {
                                        Text("\(key.nom) : \(quantite)")
                                    //                        Text("\(activite.materiel[key]!)") idem que "if let", mais moins bonne pratique
                                }
                            }
                        }
                        .padding(.horizontal, 24.0)
                        Spacer()
                    }.padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                }
                
                //            Les Etapes
                VStack {
                    Text("Les étapes")
                        .font(.title2)
                        .padding(.vertical)
                    
                    //                        VStack{
                    //                            ForEach(0..<activite.etapes.count) { indexEtape in
                    //                                HStack{
                    //                                    Text("\(indexEtape+1)-\(activite.etapes[indexEtape])\r")
                    //                                        .minimumScaleFactor(0.1)
                    //                                    Spacer()
                    //                                }
                    //                                .padding(.horizontal)
                    //                            }
                    //                        }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            ForEach(0..<activite.etapes.count){ indexEtape in
                                Text("\(indexEtape+1)-\(activite.etapes[indexEtape])\r")
                                    .padding().frame(minWidth: 300, minHeight: 150, idealHeight: 200, maxHeight: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(10)
                                    .background( GeometryReader {
                                        geometry in Rectangle().foregroundColor(Color("VertCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
                                    .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 50) / -20), axis: (x: 0, y: 1.0, z: 0))
                                        
                                }).frame(width: 300, height: 300, alignment: .center).padding()
                            }
                        }.padding(30)
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
                    }.padding()
                }               // Bouton
                
                Button(action: {feedback.toggle(); data.activites[activiteIndex].faite = true}, label: {
                    Text("Noter mes obervations")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("BleuCokido"))
                        .cornerRadius(10)
                }).sheet(isPresented: $feedback, content: {
                            PageFeedback(didTap: $feedback, monFeedback: $data.activites[activiteIndex].feedback)}).navigationTitle(Text("\(activite.titreActivite)")).navigationBarTitleDisplayMode(.inline)
                
                // Button - Fin
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
        PageDetailActivite(activite: Data().activites[0]).environmentObject(Data())
    }
}
