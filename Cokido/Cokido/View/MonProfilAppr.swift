import SwiftUI

struct MonProfilAppr: View {
    
    
    @Binding var retour:Bool
    
    
    var profilApp : ProfilApprentissage
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                Image(profilApp.image)
                    .resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 420, height: 120)
                
                VStack{
                    VStack(alignment: .leading) {
                        
                        
                        Text("Ton profil dominant est : \(profilApp.type.rawValue)")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .padding()
                        
                        Text("C'est quoi ça? ")
                            .fontWeight(.bold)
                            .padding()
                        
                        Text(profilApp.cQC)
                            .padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                        
                        Text ("Conseils")
                            .fontWeight(.bold)
                            .padding()
                        
                        Text(profilApp.conseil)
                            .padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                    }.padding()
                    
                    if(profilApp.type == Type.Visuel){
                        Image(profilApp.image2)
                            .resizable()
                            .frame(width: 450, height: 200).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    }else{
                        Image(profilApp.image2)
                            .resizable()
                            .frame(width: 400, height: 250).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    }
                    
                    VStack(alignment: .leading){
                        
                        
                        Text("Pour savoir en plus...").fontWeight(.bold)
                            .padding()
                        
                        
                        Text(profilApp.pSP)
                            .padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                        
                        Text(profilApp.pSP2)
                            .padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                        
                        
                        Text(" Au niveau statistique")
                            .fontWeight(.bold)
                            .padding()
                        Text(profilApp.stat)
                            .padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                        
                        
                        
                        
                    }.padding()
                    
                    Image("conedale")
                        .resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 310, height: 310).padding()
                    
                    
                }.padding()
            }.navigationTitle("Mon profil d'apprentissage").navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:Button(action: {
                retour.toggle()
                
            })
            {
                
                Image(systemName:"xmark")
                    .font(.title)
                    .padding()
                    .foregroundColor(Color("BleuCokido"))
                
            })
        }
    }
}
struct MonProfilAppr_Previews: PreviewProvider {
    static var previews: some View {
        MonProfilAppr(retour: .constant(false), profilApp: audi)
    }
}
