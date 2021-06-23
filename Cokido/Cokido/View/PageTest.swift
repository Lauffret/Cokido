//
//  PageTest.swift
//
//
//  Created by Jose Cardeano on 16/06/2021.
//

import SwiftUI

struct PageTest: View {
    
    @EnvironmentObject var data: Data
    
    var diametreImage:CGFloat = 120

    @State var index : Int = 0
    
    @State var auditif:Int = 0
    @State var visuel:Int = 0
    @State var kines:Int = 0
    @State var modal: Bool = false
    @State var res: String = ""
    
    var body: some View {
        
        VStack{ // Container de tous les éléments de la page
            ProgressView(value: Double(index) / Double(monTest.count)).accentColor(Color("OrangeCokido"))
            
            
            
            
            if(index < 5) {
                
                Text(monTest[index].question)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.all)
                VStack{
                    
                    Button(action: {
                        
                        visuel += 1;
                        index += 1;
                    }, label:{
                        
                        VStack {
                            
                            if let qestion = monTest[index].reponse[0][1]{
                                Image(qestion[0].description).resizable()
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: diametreImage, height: diametreImage)
                                    .shadow(color: .gray, radius: 5.0, x: 2, y:2 )

                                Text(qestion[1].description)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .padding(.vertical,7)
                                    .padding(.horizontal,7)
                            }
                            
                            
                            
                        }.padding().background(Rectangle().frame(width: 330, height: 200).foregroundColor(Color("VertCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0))
                    })
                    
                    
                    Button(action: {
                        auditif += 1;
                        index += 1;
                        
                    }, label:{
                        VStack {
                            if let qestion = monTest[index].reponse[1][2]{
                                Image(qestion[0].description).resizable()
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: diametreImage, height: diametreImage)
                                    .shadow(color: .gray, radius: 5.0, x: 2, y:2 )

                                Text(qestion[1].description)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .padding(.vertical,7)
                                    .padding(.horizontal,7)
                            }
                            
                            
                            
                        }.padding().background(Rectangle().frame(width: 330, height: 200).foregroundColor(Color("BleuCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0))
                    })
                    
                    Button(action: {
                        index += 1;
                        kines += 1
                    }, label:{
                        VStack{
                            if let qestion = monTest[index].reponse[2][3]{
                                Image(qestion[0].description).resizable()
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: diametreImage, height: diametreImage)
                                    .shadow(color: .gray, radius: 5.0, x: 2, y:2 )

                                Text(qestion[1].description)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .padding(.vertical,7)
                                    .padding(.horizontal,7)
                            }
                            
                            
                        }.padding().background(Rectangle().frame(width: 330, height: 200).foregroundColor(Color("RougeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0))
                    })
                    
                }
            }else{
                Text("Vous avez terminé le test")
                if auditif > kines && auditif > visuel{
                    Text("Votre profil d'apprentssage est \(Type.Auditif.rawValue) ")
                    Button(action: {
                            modal.toggle()}, label: {
                        Text("Plus d'information")
                    }).sheet(isPresented: $modal, content: {
                        MonProfilAppr(retour: $modal, profilApp: audi)
                    })

                }else if kines > auditif && kines > visuel{
                    Text("Votre profil d'apprentssage est \(Type.Kinesthesique.rawValue) ")
                    Button(action: {modal.toggle()}, label: {
                        Text("Plus d'information")
                    }).sheet(isPresented: $modal, content: {
                        MonProfilAppr(retour: $modal, profilApp: kine)
                    })

                }else{
                    Text("Votre profil d'apprentssage est \(Type.Visuel.rawValue) ")
                    Button(action: { modal.toggle()}, label: {
                        Text("Plus d'information")
                    }).sheet(isPresented: $modal, content: {
                        MonProfilAppr(retour: $modal, profilApp: visu)
                    })

                    
                }
            
            }
            
        }.navigationTitle(
            Text("Test de profil")).navigationBarTitleDisplayMode(.inline).padding()
    }
    
}

struct PageTest_Previews: PreviewProvider {
    static var previews: some View {
        PageTest()
    }
}

