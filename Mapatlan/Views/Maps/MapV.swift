//
//  MapV.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 03/05/23.
//

import SwiftUI

struct MapV: View {
    var body: some View {
        MapBoxView().ignoresSafeArea(.all, edges: .top)

    }
}

struct MapV_Previews: PreviewProvider {
    static var previews: some View {
        MapV()
    }
}
