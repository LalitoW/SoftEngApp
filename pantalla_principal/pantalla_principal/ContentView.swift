import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Buenos días")
                    .font(.title)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                
                NavigationLink(destination: DetalleView(item: MenuItem(name: "Hamburguesa Americas", price: "$55.00", imageName: "hamburguesa", description: "Pan de hamburguesa Carne de res molida, Queso cheddar,Lechuga,TomateMayonesa"))) {
                    RectangleItem(name: "Hamburguesa Americas", price: "$55.00", imageName: "hamburguesa")
                }
                
                NavigationLink(destination: DetalleView(item: MenuItem(name: "Chapata", price: "$65", imageName: "chapata", description:
                                                                        "Pan chapata,Jamón,Queso,Tomate,Lechuga,Mayonesa"))) {
                    RectangleItem(name: "Chapata", price: "$65", imageName: "chapata")
                }
                
                NavigationLink(destination: DetalleView(item: MenuItem(name: "Sandwich", price: "$45", imageName: "sandwich", description: "Pan,Jamon,Lechuga,Mayonesa,Queso Amarillo"))) {
                    RectangleItem(name: "Sandwich", price: "$45", imageName: "sandwich")
                }
                
                NavigationLink(destination: DetalleView(item: MenuItem(name: "Chilaquiles", price: "$25", imageName: "chilaquiles", description: "Tortillas,Salsa,Queso,Crema,Pollo"))) {
                    RectangleItem(name: "Chilaquiles", price: "$25", imageName: "chilaquiles")
                }
            }
            .navigationBarTitle("Menú")
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

struct DetalleView: View {
    var item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(item.name)
                .font(.title)
                .padding()
            
            Text(item.price)
                .font(.headline)
                .padding()
            
            Text(item.description)
                .padding()
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
        .navigationBarTitle(item.name)
    }
}

struct MenuItem {
    var name: String
    var price: String
    var imageName: String
    var description: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

