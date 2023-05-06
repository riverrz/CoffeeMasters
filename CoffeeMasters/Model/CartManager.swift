//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Shivam Kumar on 06/05/23.
//

import Foundation


class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.cart.append((product, quantity))
    }
    
    func remove(product: Product) {
        self.cart.removeAll { itemInCart in
            return itemInCart.0.id == product.id
        }
    }
    
    func total() -> Double {
        var total: Double = 0
        for item in cart {
            total += Double(item.1) * item.0.price
        }
        return total
    }
}
