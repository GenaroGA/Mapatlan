//
//  WrongCredentials.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 29/03/23.
//

import SwiftUI

struct WrongCredentials: View {
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
                    Text("USUARIO INVALIDO")
                        .frame(width: 300,height: 10)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .padding(EdgeInsets(top: 40, leading: 20, bottom: 0, trailing: 20))
                        .font(.system(size: 16, weight: .light, design: .default))
                    Image("Error")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .padding(.all, 50.0)
                }
                VStack{
                    Text("Verifique que sus datos sean correctos o contacte al servicio de PCPUMA si se trata de un error.")
                        .font(.title3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    Button(action: {
                        // Acción del botón
                        }) {
                            HStack {
                                Image("Row")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .clipped()
                                Spacer()
                                Text("Regresar")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Spacer()
                                    
                                    
                            }
                            .padding()
                            .frame(width: /*@START_MENU_TOKEN@*/220.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .background(Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705))
                            .cornerRadius(15.0)
                            
                        }.padding(.bottom,30)
                }
                .background(Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686))
                .cornerRadius(15)
                .padding(
                    EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                Spacer()
            }
            .background(Rectangle().foregroundColor(.white).shadow(radius: 15))
            .cornerRadius(15)
            .padding(EdgeInsets(top: 40, leading: 20, bottom: 40, trailing: 20))
        }.ignoresSafeArea()
    }
}

struct WrongCredentials_Previews: PreviewProvider {
    static var previews: some View {
        WrongCredentials()
    }
}
