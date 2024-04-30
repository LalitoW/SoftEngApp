import SwiftUI

struct CuponesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Tus cupones")
                    .font(.title)
                    .bold()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange.opacity(0.3)) // Opacidad más alta para mayor difuminado
                        .frame(height: 90)
                        .padding()
                    Text("Felicidades ganaste un descuento de 20 pesos\n Usa el codigo con folio: X\n  En tu proxima visita")
                        .foregroundColor(.black) // Color del texto negro
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange.opacity(0.3)) // Opacidad más alta para mayor difuminado
                        .frame(height: 80)
                        .padding()
                    Text("Refire a un amigo y gana un cupon")
                        .foregroundColor(.black) // Color del texto negro
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                Spacer()
            }
            .navigationTitle("Cupones")
        }
    }
}

struct CuponesView_Previews: PreviewProvider {
    static var previews: some View {
        CuponesView()
    }
}
