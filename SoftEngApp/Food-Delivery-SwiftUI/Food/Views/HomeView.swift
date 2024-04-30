//
//  HomeView.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct HomeView: View {
    @State var hero = false
    @State var data = TrendingCard
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    SearchBar()
                    
                    //Platillos en tendencia
                    VStack{
                        HStack {
                            Text("Platillos en tendencia")
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .padding(.leading, 20)
                                .padding(.top, 20)
                            
                            Spacer()
                            Text("Ver todo >") //Texto para "Ver todo"
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                        }
                        // Vista de las tarjetas
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack { //Stack para mostrar los platillos
                                ForEach(TrendingCard) { card in
                                    NavigationLink(
                                        destination: Meal(meal :card),
                                        label: {
                                            TrendingWeek(trendingMeal: card)
                                                .background(Color.white)
                                                .cornerRadius(15)
                                                .shadow(radius: 1)
                                        })
                                        .buttonStyle(PlainButtonStyle())
                                }
                                .padding(.bottom, 10)
                                .padding(.leading, 30)
                                
                            }
                        }
                    }.padding(.top, -50)
                    .opacity(self.hero ? 0 : 1)
                    
                    
                    //Categories
                    /*VStack{
                        HStack {
                            Text("Categorias")
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .padding(.leading, 20)
                            
                            Spacer()
                        }
                        // Categories View
                        HStack(spacing: 10) {
                            
                            ForEach(1 ..< 5) { i in
                                VStack {
                                    Image("categ-\(String(i))")
                                    Text(FoodTypes[Int(i)-1])
                                        .font(.subheadline)
                                        .bold()
                                }
                                .frame(width: 80, height: 100, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                            }
                        }
                        
                        HStack(spacing: 10) {
                            ForEach(3 ..< 7) { i in
                                VStack {
                                    Image("categ-\(String(i))")
                                    Text(FoodTypes[Int(i)-1])
                                        .font(.subheadline)
                                        .bold()
                                        .multilineTextAlignment(.center)
                                }
                                .frame(width: 80, height: 100, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(15)
                            }
                        }
                        
                    }
                    .shadow(radius: 1)
                    .opacity(self.hero ? 0 : 1)
                    */
                    
                    //Vista para nuestra categoria
                    VStack{
                        HStack {
                            Text("Nuestras Categorias")
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .padding(.leading, 20)
                                .padding(.top, -50)
                            
                            Spacer()
                            Text("Ver todo >")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                                .padding(.trailing, 20)
                                .padding(.top, -49)
                        }
                        .opacity(self.hero ? 0 : 1)
                        
                        
                        // Card View
                        VStack(spacing: 100) {
                            ForEach(0..<self.data.count){i in
                                GeometryReader{g in
                                    OurPicks(card: self.$data[i], hero: self.$hero)
                                        
                                        .offset(y: self.data[i].expand ? -g.frame(in: .global).minY : 0)
                                        .opacity(self.hero ? (self.data[i].expand ? 1 : 0) : 1)
                                        .onTapGesture {
                                            
                                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)){
                                                if !self.data[i].expand{
                                                    self.hero.toggle()
                                                    self.data[i].expand.toggle()
                                                }
                                            }
                                            
                                        }
                                    
                                }
                                // going to increase height based on expand...
                                .frame(height: self.data[i].expand ? UIScreen.main.bounds.height : 250)
                                .simultaneousGesture(DragGesture(minimumDistance: self.data[i].expand ? 0 : 800).onChanged({ (_) in
                                    
                                    print("dragging")
                                }))
                            }
                            
                            
                        }
                        //Stack para mostrat las sucursales, se manda a llamar a "ListaVistaNav()"
                        VStack {
                            Text("Sucursales")
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.trailing)
                                .padding(.leading, 20)
                                .padding(.top, 80)
                            
                            Spacer()
                            
                            //ListaVistaNav()
                        }
                    
                        
                    }.padding(.top, 50)
                    .padding(.bottom, 100)

                    
    
                    
                    
                }
                .background(Color(#colorLiteral(red: 0.9843164086, green: 0.9843164086, blue: 0.9843164086, alpha: 1)))
                //Definicion del color de fondo
            }
            .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
            .edgesIgnoringSafeArea(.top)
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct SearchBar: View {
    @State var search = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)), Color(#colorLiteral(red: 0.9843164086, green: 0.9843164086, blue: 0.9843164086, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height)*0.25, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                //Tittulo, en teoria, se debe cambiar por un logo
                Text("Nombre Restaurante")
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                HStack {
                    //Direccion
                    Text("Visitanos: Av. Morillotla #04, \n San Andres Cholula, Puebla")
                        .bold()
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .padding(.leading, 15)
                        .padding(.top, -5)
                    Spacer()
                    //Horario
                    Text("Horario: L-V \n 8:00 a 17:00")
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .padding(.trailing, 20) 
                        .padding(.top, -5)
                }
                HStack {
                    //Barra de busqueda
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .font(.title)
                    TextField("Tu platillo...", text: $search)
                        
                        .font(.title3)
                        
                }
                .frame(width:  ( UIScreen.main.bounds.width)*0.85, height: 40, alignment: .leading)
                .padding(.leading, 20)
                .background(Color.white)
                .cornerRadius(10)
                
            }
        }
    }
}
