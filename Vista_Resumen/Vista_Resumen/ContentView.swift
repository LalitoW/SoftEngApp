//
//  ContentView.swift
//  Vista_Resumen
//
//  Created by iOS Lab on 16/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("check")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 400)
            
            Text("Hamburguesa las Americas")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .kerning(-1.75)
                .multilineTextAlignment(.center)
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 600, height: 600))
    }
}
