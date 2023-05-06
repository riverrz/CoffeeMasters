//
//  Category.swift
//  CoffeeMasters
//
//  Created by Shivam Kumar on 06/05/23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String  {
        return self.name
    }
}
