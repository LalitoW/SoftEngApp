import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 200)
            .cornerRadius(10)
            .padding()
    }
}

struct ContentView: View {
    @State private var isChecked1 = false
    @State private var isChecked2 = false
    
    @State private var isChecked3 = false
    @State private var isChecked4 = false
    
    @State private var showTarjetaTexto = false
    @State private var isCheckedTarjeta1 = false
    @State private var isCheckedTarjeta2 = false
    
    @State private var showMap = false // Mostrar el mapa cuando se seleccione "Entregar ubicación"

    @State private var mostrarCampoCupon = false
    @State private var cuponCode = ""
    @State private var total = 60

    @State private var mostrarConfirmacion = false // Controla la visibilidad de la vista de confirmación

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Pago")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Text("Método de pago")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .bold()
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: isChecked1 ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(isChecked1 ? .orange : .gray)
                                .onTapGesture {
                                    isChecked1.toggle()
                                    if isChecked1 {
                                        isChecked2 = false // Deselecciona la opción Efectivo si se selecciona Tarjeta
                                        showTarjetaTexto = true
                                    } else {
                                        showTarjetaTexto = false
                                    }
                                }
                            
                            Text("Tarjeta")
                                .padding(.leading, 10)
                            
                            Spacer()
                            
                            Image(systemName: "creditcard")
                                .imageScale(.large)
                                .foregroundColor(.blue)
                        }
                        .padding()
                        
                        HStack {
                            Image(systemName: isChecked2 ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(isChecked2 ? .orange : .gray)
                                .onTapGesture {
                                    isChecked2.toggle()
                                    if isChecked2 {
                                        isChecked1 = false // Deselecciona la opción Tarjeta si se selecciona Efectivo
                                        showTarjetaTexto = false
                                    }
                                }
                            
                            Text("Efectivo")
                                .padding(.leading, 10)
                            
                            Spacer()
                            
                            Image(systemName: "banknote")
                                .imageScale(.large)
                                .foregroundColor(.blue)
                        }
                        .padding()
                        
                        if showTarjetaTexto {
                            HStack {
                                Image(systemName: isCheckedTarjeta1 ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(isCheckedTarjeta1 ? .orange : .gray)
                                    .onTapGesture {
                                        isCheckedTarjeta1.toggle()
                                        if isCheckedTarjeta1 {
                                            isCheckedTarjeta2 = false // Deselecciona la otra opción de Tarjeta terminación
                                        }
                                    }
                                
                                Text("Tarjeta terminación 3494")
                                    .padding(.leading, 10)
                                
                                Spacer()
                            }
                            .padding()
                            
                            HStack {
                                Image(systemName: isCheckedTarjeta2 ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(isCheckedTarjeta2 ? .orange : .gray)
                                    .onTapGesture {
                                        isCheckedTarjeta2.toggle()
                                        if isCheckedTarjeta2 {
                                            isCheckedTarjeta1 = false // Deselecciona la otra opción de Tarjeta terminación
                                        }
                                    }
                                
                                Text("Tarjeta terminación 849")
                                    .padding(.leading, 10)
                                
                                Spacer()
                            }
                            .padding()
                        }
                    }
                    
                    Text("Método de entrega")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .bold()
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: isChecked3 ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(isChecked3 ? .orange : .gray)
                                .onTapGesture {
                                    isChecked3.toggle()
                                    if isChecked3 {
                                        isChecked4 = false // Deselecciona la opción Recoger si se selecciona Entregar ubicación
                                        showMap = true
                                    } else {
                                        showMap = false
                                    }
                                }
                            
                            Text("Entregar ubicación")
                                .padding(.leading, 10)
                            
                            Spacer()
                        }
                        .padding()
                        
                        HStack {
                            Image(systemName: isChecked4 ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(isChecked4 ? .orange : .gray)
                                .onTapGesture {
                                    isChecked4.toggle()
                                    if isChecked4 {
                                        isChecked3 = false // Deselecciona la opción Entregar ubicación si se selecciona Recoger
                                        showMap = false
                                    }
                                }
                            
                            Text("Recoger")
                                .padding(.leading, 10)
                            
                            Spacer()
                        }
                        .padding()
                    }
                    
                    if showMap {
                        MapView()
                    }
                    
                    Spacer()
                    
                    HStack {
                        Button("Agregar cupon", action: {
                            mostrarCampoCupon.toggle()
                        })
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                        Spacer()
                    }
                    .padding(.bottom)
                    
                    if mostrarCampoCupon {
                        HStack {
                            TextField("Código de cupón", text: $cuponCode)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                            
                            Button("Aplicar", action: aplicarCupon)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.bottom)
                    }
                    
                    Text("Total: \(total)")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: ConfirmationView(), isActive: $mostrarConfirmacion) {
                        Button(action: {
                            mostrarConfirmacion = true
                        }) {
                            HStack {
                                Image(systemName: "handbag")
                                Text("Realizar pago")
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        .padding(.bottom)
                    }
                }
                .padding()
            }
        }
    }
    
    private func aplicarCupon() {
        if cuponCode == "X" {
            total -= 20
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
