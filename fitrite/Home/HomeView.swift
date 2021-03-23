//
//  HomeView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 23/03/2021.
//

import SwiftUI

struct HomeView: View {
    
    let collection = ShoesCollectionManager()
    
    
    var body: some View {
        VStack{
            ShoeCollectionView()
                .environmentObject(collection)
            
            WishListCollectionView()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
