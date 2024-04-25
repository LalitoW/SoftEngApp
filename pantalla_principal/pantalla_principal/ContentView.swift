//
//  ContentView.swift
//  pantalla_principal
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Buenos días")
                .font(.title)
                .padding(.top, 20)
                .padding(.leading, 20)
            
            RectangleItem(name: "Hamburguesa Americas", price: "$55.00", imageName: "hamburguesa")
            RectangleItem(name: "Chapata", price: "$65", imageName: "chapata")
            RectangleItem(name: "Sandwich", price: "$45", imageName: "sandwich")
            RectangleItem(name: "Chilaquiles", price: "$25", imageName: "chilaquiles")
        }
    }
}

struct RectangleItem: View {
    var name: String
    var price: String
    var imageName: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.orange.opacity(0.5))
                .frame(height: 150)
                .padding(.horizontal)
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(name)
                        .foregroundColor(.black)
                    
                    Text(price)
                        .foregroundColor(.black)
                    

                    
                    Button(action: {
                        // Acción cuando se presiona el botón
                    }) {
                        Text("Ordenar")
                            .foregroundColor(.white)
                            .padding(.horizontal, 9)
                            .padding(.vertical, 5)
                            .background(Color.orange)
                            .cornerRadius(5)
                    }
                }
                .padding(.leading, 10)
                
                Spacer()
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 85)
                    
                    .padding(.trailing, 10)
                    .padding(.top, 25)
            }
            .padding(.horizontal, 20)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
