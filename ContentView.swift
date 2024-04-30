import SwiftUI

struct ContentView: View {
    @State private var isEditingInfo = false
    @State private var name = "Oscar Gutierrez"
    @State private var phone = "34432432323"
    @State private var email = "Hotmaol.com"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Datos personales")
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    HStack {
                        Spacer()
                        if !isEditingInfo {
                            Button(action: {
                                isEditingInfo.toggle()
                            }) {
                                Text("Modificar")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                            }
                            .padding(.trailing)
                        } else {
                            Button(action: {
                                isEditingInfo.toggle()
                            }) {
                                Text("Actualizar")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                            }
                            .padding(.trailing)
                        }
                    }
                    
                    HStack {
                        Image( "Men")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .padding(.trailing, 20)
                        
                        VStack(alignment: .leading) {
                            Text(name)
                                .font(.title)
                                .padding(.vertical, 5)
                            Text(phone)
                                .font(.title)
                                .padding(.vertical, 5)
                            Text(email)
                                .font(.title)
                                .padding(.vertical, 5)
                        }
                    }
                    .padding(.horizontal)
                    
                    if isEditingInfo {
                        TextField("Nombre", text: $name)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                            .padding(.bottom, 10)
                        
                        TextField("Teléfono", text: $phone)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                            .padding(.bottom, 10)
                        
                        TextField("Correo electrónico", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                            .padding(.bottom, 10)
                    }
                    
                    Button(action: {
                        // Acción del primer botón
                    }) {
                        Text("Pedidos                ")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
//                            .padding(.center)
                    }
                    
                    NavigationLink(destination: CuponesView()) {
                        Text("Cupones           ")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    Button(action: {
                        // Acción del cuarto botón
                    }) {
                        Text("Ayuda                    ")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Mi Perfil")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
