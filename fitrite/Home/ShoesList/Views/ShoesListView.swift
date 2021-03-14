//
//  ShoesListView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 14/03/2021.
//

import SwiftUI

struct ShoesListView: View {
    
    var myShoe: ShoesCollection.MyShoe
    
    var body: some View {
        
        List{
            ForEach(ShoesList.shoes){ shoe in
                
                ZStack {
                    ShoeListItemView(shoe: shoe)
                    
                    NavigationLink(
                        destination: MyShoeDetailView(myShoe: myShoe)){
                        EmptyView()
                    }
                }
            }
        }.navigationBarTitle("Chose Model")
        
    }
}

struct ShoesListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoesListView(myShoe: ShoesCollection.MyShoe(id: "1", shoe: ShoesList.shoes[0], size: 9.0))
    }
}
