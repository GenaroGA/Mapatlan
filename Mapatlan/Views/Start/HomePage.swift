//
//  ContentView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 27/03/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686)
                .ignoresSafeArea()
            VStack {
                VStack {
                    Spacer()
                    Spacer()
                    Image("MapatlanLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 50.0)
                    Text("Bienvenido a la FES Acatán")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.system(size: 16, weight: .light, design: .default))
                    Spacer()
                    VStack {
                        
                        Button(action: {
                                // Acción del primer botón
                            }) {
                            Text("Visitante")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705))
                            .cornerRadius(15.0)
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            // Acción del segundo botón
                            }) {
                                Text("Comunidad")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 220, height: 60)
                                    .background(Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705))
                                    .cornerRadius(15.0)
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack
                    {
                        Image("BottomHome")
                            .resizable()
                            .aspectRatio(CGSize(width: 20, height: 3), contentMode: .fit)
                    }
                    .alignmentGuide(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Guide@*/.trailing/*@END_MENU_TOKEN@*/) { dimension in
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                    }
                }.background(Color.white).padding(.vertical)//.ignoresSafeArea()
            }.padding(.top)
        }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
