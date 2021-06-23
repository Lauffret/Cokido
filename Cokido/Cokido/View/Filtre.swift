//
//  Filtre.swift
//  COkidoEssaie
//
//  Created by Léa AUFFRET on 14/06/2021.
//

import SwiftUI

struct Filtre: View {
    @Binding  var dismiss : Bool
    @Binding  var inter : Bool
    @Binding  var exter : Bool
    @Binding  var prix : Double
    @Binding  var duree : Double
    @Binding  var nBPerso : Int
    var row = [GridItem(.adaptive(minimum: 100))]
    var body: some View {
        NavigationView(){
            VStack(alignment: .leading){
              
                VStack{
                    HStack{// toogle exter
                        Toggle(isOn: $inter) {
                            Text("Intérieur")
                        }.toggleStyle(SwitchToggleStyle(tint: Color("VertCokido")))
                        
                    }
                    
                    
                    HStack{ // toogle exter
                        Toggle("Extérieur", isOn: $exter).toggleStyle(SwitchToggleStyle(tint: Color("VertCokido")))
                    }
                    
                }.padding(.bottom)
                
                
                Text("Matériel")
                LazyVGrid(columns: row, spacing: 20){// Grid materiel
                    ForEach(ingredient){ ingre in
                        
                        IngredientRow(ingredient: ingre)
                        
                    }
                    
                }

                VStack(alignment: .leading){
                    Spacer()
                    Text("Prix")

                    HStack{// slider prix
                        Slider(value: $prix, in: 0...100, step: 0.5).accentColor(Color("BleuCokido"))
                        Text("max. \(String(format: "%.02f",prix)) €")
                    }
                    Spacer()
                    Text("Durée")
                    HStack{// slider duree
                        let heure = Int(duree) / 60
                        let minute = Int((duree / 60.0 - Double (Int( duree / 60.0))) * 60 )
                        Slider(value: $duree, in: 0...500, step: 10).accentColor(Color("BleuCokido"))
                        if(duree < 60.0){
                            Text("max. \(Int(duree))  min")
                        }else{
                            Text("max. \( heure ) h \( minute )")
                            
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    Spacer()
                    Text("Nombre de Personne")
                    
                    HStack{// setpper nombre de personne
                        Stepper(value: $nBPerso, in: 1...50, step: 1) {
                            Text("max. \(nBPerso) personnes")
                        }.padding()
                       
                    }
                    Spacer()
                }
            }.padding().navigationBarItems(leading: Button(action: {dismiss.toggle()} , label: {
                Text("Retour")
            }), trailing: Button(action: {dismiss.toggle()} , label: {
                Text("Valider")
            }) ).navigationBarTitle(Text("Filtre")).navigationBarTitleDisplayMode(.inline)
        }.accentColor(Color("BleuCokido"))
    }
}

struct Filtre_Previews: PreviewProvider {
    static var previews: some View {
        Filtre(dismiss: .constant(false), inter: .constant(true), exter: .constant(true),
               prix: .constant(12.0), duree: .constant(100.0), nBPerso: .constant(3))
    }
}
