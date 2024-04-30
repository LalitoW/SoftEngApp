//
//  estudiante.swift
//  Clase1_SwiftUI
//
//  Created by iOS Lab on 06/02/24.
//

import Foundation
import SwiftUI // es importante importar esta libreria para poder usar la clase Image

struct Estudiante { //creamos una estructura llamada Estudiante

    var id: Int
    var nombre: String
    var apellido: String
    var carrera: String
    var foto: Image
    var practicas: Bool	

}
