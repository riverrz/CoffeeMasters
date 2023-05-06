//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Shivam Kumar on 06/05/23.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer Valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }.navigationTitle("Offers")
        }
        
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
