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
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.orange.opacity(0.5))
                .frame(height: 100)
                .padding(.horizontal)
                .overlay(
                    HStack {
                        Spacer()
                        Image(systemName: "globe")
                            .foregroundColor(.white)
                            .frame(width: 50)
                    }
                )
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.orange.opacity(0.5))
                .frame(height: 100)
                .padding(.horizontal)
                .overlay(
                    HStack {
                        Spacer()
                        Image(systemName: "globe")
                            .foregroundColor(.white)
                            .frame(width: 50)
                    }
                )
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.orange.opacity(0.5))
                .frame(height: 100)
                .padding(.horizontal)
                .overlay(
                    HStack {
                        Spacer()
                        Image(systemName: "globe")
                            .foregroundColor(.white)
                            .frame(width: 50)
                    }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
