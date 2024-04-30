import SwiftUI

struct ConfirmationView: View {
    var body: some View {
        VStack {
//            Spacer() // Agrega un espacio en la parte superior del VStack para empujar los elementos hacia abajo
            
            Image("Paloma")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
//            Spacer() // Agrega un espacio entre la imagen y el texto
            
            Text("Hamburguesa Americas")
                .font(.title)
                .bold()
                .padding()
            
            Text("Pedido Creado con éxito ")
                .font(.title)
                .bold()
                .padding()
            Text("No.340 ")
                .font(.title)
                .bold()
                .padding()
                .position(x: 180, y: 20)
            
            Text("Resumen \n 1 hambuerguesa Americas\n 1 botella de agua\n 1 galleta")
                .font(.body)
                .multilineTextAlignment(.center)
                .bold()
                .padding()
                .position(x: 180, y: -50)
            Text("Total:60")
                .font(.title)
                .bold()
                .padding()
//                .position(x: 180, y: -50)
            Spacer() // Agrega un espacio en la parte inferior del VStack para empujar los elementos hacia arriba
        }
        .padding() // Agrega un espacio alrededor de todo el VStack para separarlo del borde de la pantalla
    }
}

struct ConfirmationView_Preview: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}
