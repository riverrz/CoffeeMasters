//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Shivam Kumar on 07/05/23.
//

import SwiftUI

struct OrderItem: View {
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$ \(item.0.price * Double(item.1), specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Secondary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
            
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "Heya", description: "Desc", price: 1.25), 2)).environmentObject(CartManager())
            .padding()
    }
}
