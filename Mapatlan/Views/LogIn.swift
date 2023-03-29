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
        }
        
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}