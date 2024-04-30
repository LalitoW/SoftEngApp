//
//  Card.swift
//  Food
//
//  Created by BqNqNNN on 7/13/20.
//

import Foundation


struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$25.00"
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "maxresdefault1", title: "Hamburguesas", descrip: "KoreanBBQ",stars: 5, expand: false),
    Card(id: 1, image: "maxresdefault2", title: "Arma tu Ensalada", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 2, image: "maxresdefault3", title: "Ensaladas", descrip: "Best Seller",stars: 4, expand: false),
    Card(id: 3, image: "maxresdefault1", title: "Desayunos", descrip: "KoreanBBQ",stars: 5, expand: false),
    Card(id: 4, image: "maxresdefault2", title: "Postres", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 5, image: "maxresdefault3", title: "Pizza Vegetariana", descrip: "dont buy iy",stars: 1, expand: false),
]

var FoodTypes = ["Platillo 1","Platillo 2","Platillo 3","Platillo 4","Platillo 5","Platillo 6"]
