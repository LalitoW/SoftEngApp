//
//  ListaDetalle.swift
//  Clase1_SwiftUI
//
//  Created by iOS Lab on 06/02/24.
//

import SwiftUI

struct ListaDetalle: View {
    
    var estud: Estudiante //Con esto podemos asignar un objeto de tipo Estuante a cada celda
    
    //Definimos una nueva variable de tipo State, de tipo Bool
    @Binding var practica: Bool
    
    var body: some View {
        HStack{
        estud.foto.resizable().frame(width:100, height:100)
        VStack{
            
            Text(estud.nombre)
                .font(.title)
            Text(estud.apellido)
                .font(.title)
            Text(estud.carrera)
                .font(.title2)
            }
            //creamos el boton que utilizaremos para decir si tiene practicas o no
            Button{
                practica.toggle()
            }
        label: {
            if practica{
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }else{
                Image(systemName: "star").foregroundColor(.black)
            }
            
        }
        }
    }
}

#Preview {
    ListaDetalle(estud: Estudiante(id: 1, nombre: "Daniel", apellido: "Gonzalez", carrera: "Doctorado", foto: Image(systemName: "person.fill"), practicas: true), practica: .constant(false))
}
