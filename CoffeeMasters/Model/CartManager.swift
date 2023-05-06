//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Shivam Kumar on 06/05/23.
//

import Foundation


class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
