//
//  PageTest.swift
//
//
//  Created by Jose Cardeano on 16/06/2021.
//

import SwiftUI

struct PageTest: View {
    
    var diametreImage:CGFloat = 160
    
    @State var auditif:Bool = false
    @State var visuel:Bool = false
    @State var kines:Bool = false
    
    var body: some View {
            ZStack  { // pour background
                Color.white
                    .ignoresSafeArea()
                VStack{ // Container de tous les éléments de la page
                    VStack{
                        Text("1. Tu rencontres quelqu’un pour la première fois. \rQue retiens-tu de cette personne en premier ?")
                            .font(.title2)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 160 / 255, green: 222 / 255, blue: 255 / 255))
                            .cornerRadius(10)
                    }
                    
                    ZStack{
                        VStack{ // Col gauche
                            
                            Button(action: {
                                
                                visuel.toggle()
                            }, label:{
                                VStack {
                                    Image("yeux").resizable()
                                        .clipShape(Circle())
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .frame(width: diametreImage, height: diametreImage)
                                        .shadow(color: .gray, radius: 5.0, x: 2, y:2 )
                                    
                                    Text("La couleur de ses vêtements")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal)
                                        .shadow(color: .gray, radius: 5.0, x: 2, y:2 )
                                }
                            }).sheet(isPresented: $visuel, content: {
                                MonProfilAppr(retour: $visuel, profilApp: visu)
                            })
                            
                            
                            
                            Spacer()
                            Button(action: {
                                
                                auditif.toggle()
                            }, label:{
                                VStack {
                                    Image("voix").resizable()
                                        .clipShape(Circle())
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .frame(width: diametreImage, height: diametreImage)
                                        .shadow(color: .gray, radius: 5.0, x: 2, y:2 )
                                    
                                    Text("Le son de sa voix et ce qu'elle a dit")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal)
                                        .shadow(color: .gray, radius: 5.0, x: 2, y:2 )
                                }
                            }).sheet(isPresented: $auditif, content: {
                                MonProfilAppr(retour: $auditif, profilApp: audi)
                            })
                        }
                        
                        .padding(.trailing,170)
                        
                        VStack{ // Col droite
                            Spacer()
                            
                            VStack {
                                Button(action: {
                                    
                                    kines.toggle()
                                }, label:{
                                    VStack{
                                        Image("bienavec").resizable()
                                            .clipShape(Circle())
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .frame(width: diametreImage, height: diametreImage)
                                            .shadow(color: .gray, radius: 5.0, x: 2, y:2 )
                                        
                                        Text("Le fait que tu te sentes\rbien avec elle")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.center)
                                            .padding(.horizontal)
                                            .shadow(color: .gray, radius: 5.0, x: 2, y:2 )
                                    }
                                }
                                
                                ).sheet(isPresented: $kines, content: {
                                    MonProfilAppr(retour: $kines, profilApp: kine)
                                })
                            }
                            Spacer()
                        }
                        .padding(.leading,170)
                    }
                }.navigationTitle(
                    Text("Test de profil")).navigationBarTitleDisplayMode(.inline)
            }.padding()
        
    }
}
struct PageTest_Previews: PreviewProvider {
    static var previews: some View {
        PageTest()
    }
}

