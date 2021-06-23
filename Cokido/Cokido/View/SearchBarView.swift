//
//  SearchBarView.swift
//  Cokido
//
//  Created by Léa AUFFRET on 23/06/2021.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var rechercheText: String
    @State private var siRecherche = false
    var body: some View {
        HStack {
            TextField("", text:$rechercheText)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if siRecherche {
                            Button(action: {
                                self.rechercheText = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.siRecherche = true
                }
            
            if siRecherche {
                Button(action: {
                    self.siRecherche = false
                    self.rechercheText = ""
                    
                }) {
                    Text("")
                }
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(rechercheText: .constant(""))
    }
}
