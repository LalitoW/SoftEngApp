//
//  ListaCont.swift
//  Clase1_SwiftUI
//
//  Created by iOS Lab on 06/02/24.
//

import SwiftUI

struct ListaCont: View {
    
    var estud: Estudiante //Con esto podemos asignar un objeto de tipo Estuante a cada celda
    
    var body: some View {
        HStack { //creamos un kstack con la imagen y los datos
        estud.foto.resizable().frame(width:50, height:50)
        VStack{
            Text(estud.nombre)
            Text(estud.apellido)
            Text(estud.carrera)
        }
        Spacer() //pegamos la informacion a la izquierda
            if estud.practicas{
                Image(systemName: "star.fill").resizable().frame(width: 30,height: 30).foregroundColor(.yellow)
            }
            Spacer()
        }
    }
}

#Preview {
     //ListaCont()
     ListaCont(estud: Estudiante(id: 1, nombre: "Daniel", apellido: "Gonzalez", carrera: "Doctorado", foto: Image(systemName: "person.fill"), practicas: true)) //le damos a la preview un caso para mostrar
}
