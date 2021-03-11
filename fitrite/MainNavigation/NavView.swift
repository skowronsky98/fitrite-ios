//
//  NavView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 11/03/2021.
//

import SwiftUI

struct NavView: View {
    
    let collection = ShoesCollectionManager()
    
    var body: some View {
        TabView {
        ShoeCollectionView()
            .environmentObject(collection)
                .tabItem {
                   Image(systemName: "house.fill")
                   Text("Home")
                 }
            
            Text("The content of the second view")
              .tabItem {
                 Image(systemName: "bag.fill")
                 Text("Shop")
              }
            

              Text("The content of the third view")
                .tabItem {
                   Image(systemName: "person.fill")
                   Text("Profile")
                }
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
