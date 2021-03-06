import SwiftUI
import SwiftUICharts



struct PageCompte: View {
    
    @EnvironmentObject var data: Data
    
    
    @State var addModal:Bool = false
    @Binding var tabSelection: Int
    
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView {
                    VStack { // entre info utilisateur et sections:Mes activites et Mon parcours
                        
                        Image(data.utilisateur.image)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 250, height: 250)
                            .clipped()
                            .cornerRadius(150)
                            .shadow(radius: 3)
                        Text(data.utilisateur.nom)
                            .font(.title)
                            .fontWeight(.medium)
                        Text("\(data.utilisateur.age) ans")
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                        Text(data.utilisateur.classe)
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.medium)
                            .padding(.bottom)
                            .padding(.bottom)
                            .padding(.bottom)
                            .padding(.bottom)
                        
                        
                        Section(header: Text("Mes activites").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.medium)){
                            
                            ForEach(Type.allCases, id: \.self){ type in
                                
                                
                                ProfileLearnRow(profilType: type )
                            }
                            
                            Section(header: Text("Mon parcours").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.medium)){
                                
                                VStack(alignment: .leading){
                                    
                                    Text("Aujourd'hui tu as fait: ").font(.title2).multilineTextAlignment(.leading).padding(10)
                                    
                                    ForEach(Type.allCases, id: \.self){ type in
                                        let nbAct = data.activites.filter({ $0.faite && $0.type == type }).count
                                        if nbAct > 1 {
                                            Text("\(nbAct) activit??s du type \(type.rawValue)").padding(2)
                                        } else {
                                            Text("\(nbAct) activit?? du type \(type.rawValue)").padding(2)
                                        }
                                    }
                                }.frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Rectangle().foregroundColor(Color("OrangeCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                                
                                VStack(alignment: .leading){
                                    Text("Tu as pass??: ").font(.title2).multilineTextAlignment(.leading)
                                        .padding(10)
                                    
                                  ActiviteDuree()
                                    
                                    
                                }.frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
                                .background(Rectangle().foregroundColor(Color("VertCokido")).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)).padding()
                                
                                
                                // LineChart
                                // Section(header: Text("LineChart")) {
                                //      LineChartView(dataPoints: pointsV).padding()
                                //  }
                                
                                // Bar Chart
                                Section(header: Text("Derni??re s??rie : 5 jours")) {
                                    BarChartView(dataPoints: pointsV).padding()
                                }
                                
                                //Horizontal Bar
                                // Section(header: Text("Horizontal Bar Chart")) {
                                //    HorizontalBarChartView(dataPoints: pointsV).padding()
                                // }
                                
                                
                            }
                            
                            Section {
                                
                                Button(action: {
                                    
                                    addModal.toggle()
                                }){
                                    Text("Mon utilisateur d'apprentissage").foregroundColor(.white)
                                        .frame(width: 250, height: 20, alignment: .center)
                                        .padding(.all, 20)
                                        .background(Color("BleuCokido"))
                                        .cornerRadius(29)
                                }
                                .padding(53)
                                .sheet(isPresented: $addModal, content: {
                                    MonProfilAppr(retour: $addModal, profilApp:data.utilisateur.profil)
                                })
                            }
                            
                            
                        }.padding()
                        
                    }.padding()
                    
                }.navigationTitle("Compte").navigationBarTitleDisplayMode(.inline)
                VStack {
                    Spacer()
                    NavigationLink(
                        destination: PageTest(monProfil: $data.utilisateur.type),
                        label: {
                            Text("Test").foregroundColor(.white)
                                .frame(width: 250, height: 20, alignment: .center)
                                .padding(.all, 20)
                                .background(Color("BleuCokido"))
                                .cornerRadius(29)
                        })
                }.padding()
                
            }
        }
    }
    //}
    //}
    struct PageCompte_Previews: PreviewProvider {
        static var previews: some View {
            PageCompte( tabSelection: .constant(2)).environmentObject(Data())
        }
    }
}
