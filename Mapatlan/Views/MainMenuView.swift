//
//  MainMenuView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 24/05/23.
//

import SwiftUI


import SwiftUI

struct MainMenuView: View
{
    var body: some View
    {
        TabView
        {
            MapV()
                .tabItem
                {
                    Image(systemName: "map.fill")
                    Text("Mapa")
                }
            Model3DView()
                .tabItem {
                    Image(systemName: "scale.3d")
                    Text("Vista 3D")
                }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}

