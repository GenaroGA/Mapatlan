//
//  SwiftUIView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 02/05/23.
//

import SwiftUI
import MapboxMaps

struct MapView: View {
    var body: some View {
        MapBoxView().ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}



