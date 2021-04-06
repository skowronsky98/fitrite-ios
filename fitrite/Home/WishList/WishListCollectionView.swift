//
//  WishListCollection.swift
//  fitrite
//
//  Created by Oskar Skowronski on 23/03/2021.
//

import SwiftUI

struct WishListView: View {
    
    
    var body: some View {
        
        NavigationView{
           
                
                List {
                    ForEach(ShoesList.Shoes){ shoe in
                        ShoeListItemView(shoe: shoe)
                        
                    }
              
                }
                .navigationBarTitle("Wish List")
           
            }.listStyle(PlainListStyle())
        
        
    }
}


struct WishListCollection_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}
