//
//  Meal.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import SwiftUI
//Declaracion de una clase que es tipo Observable
final class EstudiantesModelDataV2: ObservableObject {
//Se crea la lista V2 donde se filtra la informacion
 @Published var listestudi = [Estudiante(id: 0, nombre: "Hamburguesa", apellido: "Hawaina", carrera: "Premium", foto: Image("categ-6"), practicas: false),
                              Estudiante(id: 1, nombre: "Hamburguesa", apellido: "Mexicana", carrera: "Premium", foto: Image("categ-6"), practicas: false),
                              Estudiante(id: 2, nombre: "Hamburguesa", apellido: "Ceasear", carrera: "Vegana", foto: Image("categ-6"), practicas: true)]
}

struct Meal: View {
    
    @EnvironmentObject var ListModelData: EstudiantesModelDataV2
    @State private var showPracti = false //creamos un estado para filtrar
    
    //creamos una variable calculada a partir de filtrado
    private var filtradoEstudi: [Estudiante]{ //retornamos su valor dentro de las llaves
        return ListModelData.listestudi.filter{ estudi in //retornamos el listado de programadores pero llamando a la operacion filter
            return !showPracti || estudi.practicas //si el estado showPracti es true y si la variable practicas es true, si quitamos el signo de admiracion se muestran cuando se desactiva el toggle
        }
    }
    
    
    //Esta parte del codigo es de la interfaz
    @State private var quantity = 0
    @State var meal : Card
    @State var heart = "heart.fill"
    var placeHolder = "Nine years earlier, Lorem ipsum dolor sit amet,Morbi sed purus nulla. Curabitur dapibus ultrices lorem vitae tincidunt. Pellentesque quis arcu sit amet urna commodo porttitor. Aenean sit "
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                GeometryReader{reader in
                    Image(meal.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                        .offset(y: -reader.frame(in: .global).minY)
                        // going to add parallax effect....
                        .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY + 300)
                    
                }
                .frame(height: 280)
                
                VStack(alignment: .leading,spacing: 15){
                    
                    Text(meal.title)
                        .font(.system(size: 35, weight: .bold))
                    
                    
                    HStack(spacing: 10){
                        
                        ForEach(1..<5){_ in
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    }
                    
                    HStack {
                        Text(meal.descrip)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top,5)
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.spring(dampingFraction: 0.5)) {
                                heart = "heart"
                            }
                        }, label: {
                            Image(systemName: heart)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                            
                        })
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    Text("Descripcion")
                        .font(.system(size: 25, weight: .bold))
                    
                    Text(placeHolder)
                        .padding(.top, 10)
                        .fixedSize(horizontal: false, vertical: true)
                    
                        
                    // Aqui esta el codigo para filtrar los platillos View
                    NavigationView{
                            VStack{Toggle(isOn: $showPracti) {
                                Text("Mostrar Platillos Favoritos")
                            }.padding()
                                
                                    List(filtradoEstudi,id: \.nombre){ estudi in
                                        NavigationLink(destination:ListaDetalle(estud: estudi, practica: $ListModelData.listestudi[estudi.id].practicas)) {
                                            ListaCont(estud: estudi)
                                        }
                                    }
                                }.navigationTitle("Elegi tu platillo")
                    }
                    
                    //Esta parte del codigo muestra la opcion de cantidad button
                    HStack {
                        Text("Cantidad ")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Stepper("",
                                onIncrement: {
                                    quantity+=3
                                }, onDecrement: {
                                    quantity-=3
                                })
                            .foregroundColor(.black)
                            .background(Color.white)
                            .frame(width: 100)
                    }.padding(.top, 10)
                    
                    
                    HStack {
                        Text("Precio ")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text("$\(quantity+1).00")
                            .font(.title2)
                            .bold()
                    }
                    .padding(.top, 10)
                }
                .padding(.top, 25)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(20)
                .offset(y: -35)
            })
            
            
            Spacer()
            
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Text("Agregar al carrito")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 100)
                        .background(Color.red)
                        .cornerRadius(10)
                    
                })
                Spacer()
            }
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            .edgesIgnoringSafeArea(.all)
            .background(Color.white.edgesIgnoringSafeArea(.all))
        }
    }
    
}



struct Meal_Previews: PreviewProvider {
    static var previews: some View {
        Meal(meal: TrendingCard[0]).environmentObject(EstudiantesModelDataV2())
    }
}
