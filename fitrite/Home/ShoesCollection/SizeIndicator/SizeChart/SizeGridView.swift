//
//  SizeGridView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 21/03/2021.
//

import SwiftUI

struct SizeGridView: View {
    var body: some View {
        VStack{
            HStack {
                
                
                
                SizeItemView(size: "42.5")
            }
            
            
        }
    }
}

struct SizeGridView_Previews: PreviewProvider {
    static var previews: some View {
        SizeGridView()
    }
}
