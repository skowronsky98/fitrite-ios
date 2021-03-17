//
//  ShoesListView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 14/03/2021.
//

import SwiftUI

struct ShoesListView: View {
    
    var myShoe: MyShoe
    
    var body: some View {
        Text("siema")
//                List{
//                    ForEach(ShoesList.shoes){ shoe in
//
//                        ZStack {
//                            ShoeListItemView(shoe: shoe)
//
//                            NavigationLink(
//                                destination: MyShoeDetailView(myShoe: myShoe)){
//                                EmptyView()
//                            }
//                        }
//                    }
//                }.navigationBarTitle("Chose Model")
        
    }
}

struct ShoesListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoesListView(myShoe: MyShoe(id: "1", shoe: Shoe(id: "1", model: "Air Max 97", brand: Brand(id: "1", name: "Nike", image: "nike"), image: "shoe"), size: 12))
    }
}
