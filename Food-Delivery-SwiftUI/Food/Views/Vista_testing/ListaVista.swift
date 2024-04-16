//
//  ListaVista.swift
//  Clase1_SwiftUI
//
//  Created by iOS Lab on 06/02/24.
//

import SwiftUI


final class EstudiantesModelData: ObservableObject {
    
 @Published var listestudi = [Estudiante(id: 0, nombre: "Daniel", apellido: "Gonzalez", carrera: "Doctorado", foto: Image("categ-6"), practicas: true),
                              Estudiante(id: 1, nombre: "Juan", apellido: "Bravo", carrera: "Doctorado", foto: Image("categ-6"), practicas: true),
                              Estudiante(id: 2, nombre: "Fernanda", apellido: "Lara", carrera: "Doctorado", foto: Image("categ-6"), practicas: true),
                              Estudiante(id: 3, nombre: "Rosa", apellido: "Avila", carrera: "Doctorado", foto: Image("categ-6"), practicas: false)]
}
struct ListaVista: View{
    
    @EnvironmentObject var ListModelData: EstudiantesModelData
    @State private var showPracti = false //creamos un estado para filtrar
    
    //creamos una variable calculada a partir de filtrado
    private var filtradoEstudi: [Estudiante]{ //retornamos su valor dentro de las llaves
        return ListModelData.listestudi.filter{ estudi in //retornamos el listado de programadores pero llamando a la operacion filter
            return !showPracti || estudi.practicas //si el estado showPracti es true y si la variable practicas es true, si quitamos el signo de admiracion se muestran cuando se desactiva el toggle
        }
    }
    
    var body: some View {
        NavigationView{
        VStack{Toggle(isOn: $showPracti) {
            Text("Mostrar practicantes")
        }.padding()
            
                List(filtradoEstudi,id: \.nombre){ estudi in
                    NavigationLink(destination:ListaDetalle(estud: estudi, practica: $ListModelData.listestudi[estudi.id].practicas)) {
                        ListaCont(estud: estudi)
                    }
                }
            }.navigationTitle("Estudiantes")
        }
    }
}


#Preview {
    ListaVista().environmentObject(EstudiantesModelData())
}
