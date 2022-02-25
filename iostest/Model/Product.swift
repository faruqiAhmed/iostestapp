//
//  Product.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/25/22.
//

import SwiftUI

struct Product: Identifiable, Hashable {
var id = UUID().uuidString
var type: ProductType
var title: String
var subtitle: String
var productImage: String = ""
var quantity: Int
= 1
}
enum ProductType: String, CaseIterable{
case Wearable = "Movie"
case Action = "Action"
}
