//
//  ShoppeKarting.swift
//  Food
//
//  Created by iOS Lab on 24/04/24.
//

import SwiftUI

struct ShoppeKarting: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea()
                Rectangle().scale(1).foregroundColor(.orange)
                VStack {
                    Text("En Progreso")
                        .bold()
                        .font(.largeTitle).padding()
                    
                    TrendingWeek(trendingMeal: TrendingCard[2]).background(Color.white).padding()
                    TrendingWeek(trendingMeal: TrendingCard[0]).background(Color.white).padding()
                }
                .navigationTitle("Pedido")
                
            }
        }
        .navigationBarHidden(true)
        
    }
}
       

struct ShoppeKarting_Previews: PreviewProvider {
    static var previews: some View {
        ShoppeKarting()
    }
}
