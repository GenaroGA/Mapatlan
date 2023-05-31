//
//  ErrorPage.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 28/03/23.
//

import SwiftUI

struct ErrorPage: View {
    var body: some View {
        ZStack{
            Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686)
            VStack{
                Spacer()
                Image("MapatlanLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 50.0)
                VStack{
                    Text("HA OCURRIDO UN ERROR")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.system(size: 16, weight: .light, design: .default))
                    Image("Error")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .padding(.all, 50.0)
                }
                VStack{
                    Text("Verifique la conexión o inténtelo más tarde.")
                        .font(.title3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    Button(action: {
                        // Acción del botón
                        }) {
                            Text("Comunidad")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705))
                                .cornerRadius(15.0)
                        }.padding(.bottom,30)
                }.background(Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686)).cornerRadius(15)
                Spacer()
            }
            .background(Rectangle().foregroundColor(.white).shadow(radius: 15))
            .cornerRadius(15)
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
        }.ignoresSafeArea()
    }
}

struct ErrorPage_Previews: PreviewProvider {
    static var previews: some View {
        ErrorPage()
    }
}
