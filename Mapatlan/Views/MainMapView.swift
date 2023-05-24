//
//  MainMapViw.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 11/04/23.
//

import SwiftUI
import MapKit

struct MainMapView: View {
    var body: some View {
        VStack{
            VStack {
                HStack(alignment: .center){
                    //Spacer()
                    Text("User").padding(.horizontal)
                    Spacer()
                    Text("Mapatlan")
                    Spacer()
                    Text("Hamburguesa").padding(.horizontal)
                    //Spacer()
                }
                .padding(.vertical)
                Text("Buscador")
                Text("")
            }
            //let mapView = MKMapView()
            
            Spacer()
        }
    }
}

struct MainMapViw_Previews: PreviewProvider {
    static var previews: some View {
        MainMapView()
    }
}
