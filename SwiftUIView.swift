import SwiftUI

struct SwiftUIView: View {
    // Añade una propiedad de estado para controlar si se debe mostrar la otra vista
    @State private var mostrarOtraVista = false

    var body: some View {
        VStack {
            // Botón para mostrar la otra vista
            Button("Ir a otra vista", action: {
                mostrarOtraVista = true // Cambia el estado para mostrar la otra vista
            })
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .padding(.bottom)

            // Vista condicional para mostrar la otra vista si se establece mostrarOtraVista como true
            if mostrarOtraVista {
                ContentView()
            }
        }
    }
}

struct OtraVista: View {
    var body: some View {
        Text("Esta es otra vista")
            .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
