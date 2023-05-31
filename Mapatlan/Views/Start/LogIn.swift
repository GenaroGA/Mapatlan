//
//  LogIn.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 29/03/23.
//

import SwiftUI

struct LogIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686)
                VStack {
                    Text("Comunidad")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    HStack {
                        Spacer()
                        Spacer()
                        VStack {
                            Image("User")
                                .resizable()
                                
                                .padding(.top)
                                .frame(width: 50, height: 60)
                            ZStack {
                                Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686)
                                VStack{
                                    Text("Correo PCPUMA")
                                    TextField("cuenta@pcpuma.comunidad.unam.mx",text: $username)
                                            .autocapitalization(.none)
                                            .disableAutocorrection(true)
                                            .border(
                                                Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705),
                                                width: 2
                                            )
                                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 20))
                                    Text("Contraseña")
                                    SecureField(text: $password) {
                                            //login(username: username, password: password)
                                        }
                                        .border(
                                            Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705),
                                            width: 2
                                        )
                                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 20))
                                }
                                .frame(width: 300,height: .infinity,alignment: .top)
                                .padding(EdgeInsets(top: 40, leading: 15, bottom: 40, trailing: 15))
                                .textFieldStyle(.roundedBorder)
                                .background(Rectangle().foregroundColor(.white).shadow(radius: 15))
                                .cornerRadius(15)
                            }.background(Rectangle().foregroundColor(Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686)).shadow(radius: 15))
                                .cornerRadius(15)
                                .frame(maxWidth: 500,maxHeight: 350)
                                
                        }.background(Capsule().foregroundColor(Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686))
                            .frame(width: 200))
                            Spacer()
                        Spacer()
                    }
                    
                        //.frame(maxWidth: 300,maxHeight: 400)
                    Button(action: {
                        // Acción del botón
                        }) {
                            Text("Ingresar")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color(red: 0.8352941176470589, green: 0.6235294117647059, blue: 0.058823529411764705))
                                .cornerRadius(15.0)
                        }.padding(.vertical,30)
                }
                .background(.white)
            }
            .ignoresSafeArea()
            Image("MapatlanBl")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300)
                .padding(.horizontal)
                .background(Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686))
        }
        .background(Color(red: 0.0, green: 0.23921568627450981, blue: 0.4745098039215686))
        
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
