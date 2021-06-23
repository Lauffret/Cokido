//
//  CokidoApp.swift
//  Cokido
//
//  Created by Léa AUFFRET on 21/06/2021.
//

import SwiftUI

@main
struct CokidoApp: App {
    @StateObject private var data = Data()
    var body: some Scene {
        WindowGroup {
            tabViewCokido( utilisateur: utilisateur[0]).environmentObject(data)
        }
    }
}
