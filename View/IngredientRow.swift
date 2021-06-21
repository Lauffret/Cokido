//
//  IngredientDetail.swift
//  CokidoPreso
//
//  Created by Léa AUFFRET on 17/06/2021.
//

import SwiftUI

struct IngredientRow: View {
    var ingredient : Ingredient
    var body: some View {

        VStack {
            Image(ingredient.image).resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 50, height:50).clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
         
            Text(ingredient.nom)
        }
    }
}

struct IngredientRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientRow(ingredient: ingredient[0])
    }
}
