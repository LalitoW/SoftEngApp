//
//  Vista_Resumen.swift
//  Vista_Resumen
//
//  Created by iOS Lab on 16/04/24.
//

import SwiftUI

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
                .frame(height: 50) // Espacio para imagen (centrado)
            
            Text("Hamburguesa las Americas")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text("Pedido Creado con éxito")
                .font(.headline)
                .foregroundColor(.black)
            
            Text("No. 340")
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text("Resumen")
                .font(.headline)
                .foregroundColor(.black)
            
            Text("1 hamburguesa americas")
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text("1 botella de agua")
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text("1 galleta")
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(width: 600, height: 600)
        .background(
            RoundedRectangle(cornerRadius: 300)
                .fill(Color(#colorLiteral(red: 0.6784313917, green: 0.8470588326, blue: 0.6784313917, alpha: 1)))
        )
        .edgesIgnoringSafeArea(.all)
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
