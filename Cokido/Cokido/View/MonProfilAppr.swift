import SwiftUI

struct MonProfilAppr: View {
    
    
    @Binding var retour:Bool
    
    
    var profilApp : ProfilApprentissage
        
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Image(profilApp.image)
                        .resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                       .frame(width: 420, height: 120)
                        .cornerRadius(20)
                        .padding()
                    
                    Text("Ton profil dominant est : \(profilApp.type.rawValue)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("C'est quoi ça? ")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text(profilApp.cQC)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 400, height: 250)
                    
                    Text ("Conseils")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text(profilApp.conseil)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 400, height: 180)
                    Image(profilApp.image2)
                        .resizable()
                        .padding(.leading)
                        .frame(width: 400, height: 200)
                        .cornerRadius(20).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)

                    Text("Pour savoir en plus...")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text(profilApp.pSP)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 400, height: 170)
                    Text(profilApp.pSP2)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 400, height: 170)
                }
//alt vstack
                    
                    VStack(alignment: .leading) {
                        
                    if(!profilApp.pSP3.isEmpty){
                        Text(profilApp.pSP3)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 400, height: 100)
                    }
                        
                        if(!profilApp.pSP4.isEmpty){
                            Text(profilApp.pSP4)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(width: 400, height: 100)
                        }
                        
                    Text(" Au niveau statistique")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                        Text(profilApp.stat)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 400, height: 180)
                    Image("cone")
                        .resizable()
                        .padding(.leading)
                        .padding()
                        .frame(width: 400, height: 300)
                        .cornerRadius(20).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)

                    
                    
                    }
                    
                }
            }.navigationTitle("Mon profil d'apprentissage").navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:Button(action: {
                retour.toggle()
                
            })
            {

                Image(systemName:"gobackward")
                    .font(.title)
                               .padding()
                               .foregroundColor(.blue)
                            
            })
        }
    }
}

struct MonProfilAppr_Previews: PreviewProvider {
    static var previews: some View {
        MonProfilAppr(retour: .constant(false), profilApp: kine)
    }
}
