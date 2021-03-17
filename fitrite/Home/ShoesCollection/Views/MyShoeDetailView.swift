//
//  MyShoeDetailView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 13/03/2021.
//

import SwiftUI

struct MyShoeDetailView: View {
    
    var myShoe : MyShoe
    
    var body: some View {
        VStack {
            Image("\(myShoe.shoe.image)")
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            
            
            Text("\(myShoe.shoe.model)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
            
            Spacer()
        }
    }
}

struct MyShoeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyShoeDetailView(myShoe: MyShoe(id: "1", shoe: Shoe(id: "1", model: "Air Max 97", brand: Brand(id: "1", name: "Nike", image: "nike"), image: "shoe"), size: 9.0))
    }
}
