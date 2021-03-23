//
//  BrandListManager.swift
//  fitrite
//
//  Created by Oskar Skowronski on 14/03/2021.
//

import Foundation

class BrandListManager: ObservableObject {
    
    private var brandListModel : BrandList
    
    init() {
        brandListModel = BrandList(Array(
                                    arrayLiteral: Brand(id: "1", name: "Nike", image: "nike"),
                                    Brand(id: "2", name: "Adidas", image: "adidas"),
                                    Brand(id: "3", name: "Jordan", image: "jordan")))
    }
    
    var brandList: [Brand]{
        brandListModel.brands
    }
}

