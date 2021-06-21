//
//  rse.swift
//  Cokido
//
//  Created by Léa AUFFRET on 21/06/2021.
//

import SwiftUI

struct rse: View {
    var body: some View {
        GeometryReader { p in
                    VStack {
                        LineChartSwiftUI()
                            //use frame to change the graph size within your SwiftUI view
                            .frame(width: p.size.width, height: p.size.height/5, alignment: .center)
                    }
                }
    }
}

struct rse_Previews: PreviewProvider {
    static var previews: some View {
        rse()
    }
}
