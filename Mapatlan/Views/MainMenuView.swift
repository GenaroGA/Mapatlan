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
            MenuView()
                .tabItem
            {
                Image(systemName: "magnifyingglass")
                Text("Menu")
            }
            Model3DView()
                .tabItem {
                    Image(systemName: "cube.fill")
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

