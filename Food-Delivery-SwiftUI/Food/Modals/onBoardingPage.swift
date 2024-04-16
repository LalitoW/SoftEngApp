//
//  onBoardingPage.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "discover", title: "Descubra nuestros restaurantes cercanos a ti", descrip: "Te lo ponemos fácil para que encuentres la comida que te apetece. Introduzca la dirección de su casa y déjenos hacer el resto."),
    Page(id: 1, image: "choose", title: "Escoge tu platillo favorito", descrip: "Escoge tu platillos favoritos e incluso modificalos."),
    Page(id: 2, image: "pick", title: "De la cocina a tu casa", descrip: "Nos aseguramos de que tu comida llegue a tiempo y sin ningun problema.")
]
