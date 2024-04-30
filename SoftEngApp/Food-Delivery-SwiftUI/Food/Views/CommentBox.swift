//
//  CommentBox.swift
//  Food
//
//  Created by iOS Lab on 18/04/24.
//

import SwiftUI

struct CommentBox: View {
    @State private var usercomment = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea()
                Rectangle().scale(1).foregroundColor(.orange)
                VStack {
                    Text("Evaluación de servicio")
                        .bold()
                        .font(.largeTitle).padding()
                    Text("¿Cómo fue tu experiencia con nosotros?").frame(width:350).font(.title)
                    
                    Image("faces").resizable().scaledToFit()
                    
                    Text("Envianos tus comentarios.")
                        .font(.title)
                    TextField("Escribe aquí.", text: $usercomment).padding().frame(width: 355, height: 100).background(Color.white)
                    
                }
            }
        }
        .navigationBarHidden(true)
    }
}
       

struct CommentBox_Previews: PreviewProvider {
    static var previews: some View {
        CommentBox()
    }
}
