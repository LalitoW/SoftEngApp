//
//  Location.swift
//  Food
//
//  Created by BqNqNNN on 7/12/20.
//

import SwiftUI

struct Location: View {
    var body: some View {
        NavigationView {
            VStack {
                    Image("location")
                        .resizable()
                        .scaledToFit()
                    Text("Hola, mucho gusto!")
                        .font(.title)
                        .bold()
                    Text("Habilita tu ubicacion para \n encontrar los restaurantes \n cercanos a ti. ")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                        .padding(.all, 20)
                    
                    NavigationLink(
                        destination: NavBar().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                        label: {
                            HStack {
                                Image(systemName: "location.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                                
                                Text("Usar localizacion")
                                    .bold()
                                    .foregroundColor(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                                
                            }
                            .frame(width: 300, height: 60, alignment: .center)
                            .border(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)), width: 3)
                            .cornerRadius(5)
                        })
                    
                    Text("O puedes ingresarla \n manualmente")
                        .bold()
                        .underline()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .padding(.top, 80)
                    Spacer()
                    
            }
        }

    }
    
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
