//
//  ShoesListView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 14/03/2021.
//

import SwiftUI

struct ShoesListView: View {
    
    @EnvironmentObject private var shoesCollectionManager: ShoesCollectionManager
    @ObservedObject var shoeListManager : ShoesListManager
    
    
    var body: some View {
        
        List{
            ForEach(shoeListManager.shoes){ shoe in
            
                ZStack {
                    ShoeListItemView(shoe: shoe)

                    NavigationLink(
                        destination: SizeIndicatorView(sizeIndicatorManager: SizeIndicatorManager(shoe: shoe))){
                        EmptyView()
                    }
                }
                
            }
           
        }.navigationBarTitle("Choose Model")
       
       
    }
}

struct ShoesListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoesListView(shoeListManager: ShoesListManager())
        
    }
}
