//
//  HomeViewModel.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/25/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var productType: ProductType = .Wearable
    @Published var products: [Product] = [
        Product(type: .Wearable, title: "Wonder Woman", subtitle: "Comedy, Family", productImage: "image 105"),
        Product (type: .Wearable, title: "Alita", subtitle:"Cyberpunk, Fantasy", productImage: "image 96"),
        Product (type: .Wearable, title: "Apple Watch", subtitle: "Series 4: Black", productImage: "mulan") ,
    
   
    ]
}

