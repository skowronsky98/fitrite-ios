//
//  WishListCollection.swift
//  fitrite
//
//  Created by Oskar Skowronski on 23/03/2021.
//

import SwiftUI

struct WishListCollectionView: View {
    
    
    var body: some View {
        
        NavigationView{
            ScrollView(.horizontal){
                
                HStack {
                    ForEach(ShoesList.Shoes){ shoe in
                        ShoeListItemView(shoe: shoe)
                        
                    }
              
                }
                Spacer()
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Wish List")

            
            
        }
        
    }
}


struct WishListCollection_Previews: PreviewProvider {
    static var previews: some View {
        WishListCollectionView()
    }
}
