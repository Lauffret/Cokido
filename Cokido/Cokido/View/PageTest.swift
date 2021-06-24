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
    
    @State var index : Int = 0 //0
    
    @State var auditif:Int = 0
    @State var visuel:Int = 0
    @State var kines:Int = 0
    @State var modal: Bool = false
    
    @Binding var monProfil: Type
    
    var body: some View {
        
        VStack{ // Container de tous les éléments de la page
            ProgressView(value: Double(index) / Double(monTest.count)).accentColor(Color("OrangeCokido"))
                .padding(.horizontal)
            
            
            if(index < 5) {
                
                Text(monTest[index].question)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.all)
                    .frame(height: 110.0)
                VStack{
                    
                    Button(action: {
                        
                        visuel += 1;
                        index += 1;
                    }, label:{
                        
                        VStack {
                            
                            if let qestion = monTest[index].reponse[0][1]{
                                Image(qestion[0].description).resizable()
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: .fill)
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
                Image("bravo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 150.0)
                
                Text("Vous avez terminé le test")
                    .padding(.top, 100.0)
                
                let typeResult = resultatTest(kines:kines, auditif:auditif, visuel:visuel )
                
                HStack{
           
                Text("Votre profil d'apprentissage est ")
                    Text("\(typeResult.type.rawValue)")
                        .font(.title2)
                        .foregroundColor(Color("RougeCokido"))
                    
                }
                    Button(action: {monProfil = typeResult.type;
                            modal.toggle()}, label: {
                                Text("Plus d'informations")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color("BleuCokido"))
                                    .cornerRadius(10)
                            })
                    Spacer()
                        .sheet(isPresented: $modal, content: {
                            MonProfilAppr(retour: $modal, profilApp: typeResult)
                        })
            }
        }.navigationTitle(
            Text("Test de profil")).navigationBarTitleDisplayMode(.inline).padding()
    }
}

struct PageTest_Previews: PreviewProvider {
    static var previews: some View {
        PageTest(monProfil: .constant(Type.Auditif))
    }
}

func resultatTest(kines:Int, auditif:Int, visuel:Int ) -> ProfilApprentissage {
    if auditif >= kines && auditif > visuel{
        return audi
    }else if kines > auditif && kines >= visuel{
        return kine
    }else{
        return visu
    }
}
