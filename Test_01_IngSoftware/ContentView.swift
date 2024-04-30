//
//  ContentView.swift
//  Test_01_IngSoftware
//
//  Created by iOS Lab on 16/04/24.
//

import SwiftUI
import SwiftData


let backgroundGradient = LinearGradient(
    colors: [Color.orange, Color.white],
    startPoint: .top, endPoint: .bottom)

// Vista entrar a la aplicacion movil
struct ContentView: View {
   
    @State var email = ""
    @State var password = ""
    
    @State var succ: Bool = false
    @State var fast: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Image("img-no-bg")
                    .resizable()
                    .frame(width: 160,height: 160)
                    .scaledToFit() // Ajustar la imagen dentro del espacio disponible
                
                Text("Aplicacion Food Delivery UDLAP ") // Título de bienvenida
                    .frame(width: 400)
                    .font(.title)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .fontWeight(.heavy)
                
                Group{
                    
                    TextField("ID", text: $email)
                        .frame(maxWidth: 255)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding(10)
                        .background(
                            RoundedRectangle(cornerRadius: 10).fill(Color.white)
                                .stroke(Color.white, lineWidth: 4)
                        )
                        
                    SecureField("Password", text: $password)
                        .frame(maxWidth: 255)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding(10)
                        .background(
                            RoundedRectangle(cornerRadius: 10).fill(Color.white)
                                .stroke(Color.white, lineWidth: 4)
                        )
                }
                
                HStack {
                    Button(action: {}) {
                        Text("Iniciar Sesion")
                            .foregroundColor(.white)
                            .padding(10)
                            .fontWeight(.bold)
                            .background(Color.orange)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.orange, lineWidth: 1)
                            )
                    }
                    Button(action: {}) {
                        Text("Registrarme")
                            .foregroundColor(.orange)
                            .padding(10)
                            .fontWeight(.bold)
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.orange, lineWidth: 2)
                            )
                    }
                }.padding(.top, 20.0)
                Spacer()
                    
                
                
            }.background(backgroundGradient)
        }
    }
}

    


// Vista de previsualización para ContentView.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
