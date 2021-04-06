//
//  SizeItemView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 21/03/2021.
//

import SwiftUI

struct SizeItemView: View {
    var size : String

    var body: some View {
      
            ZStack{
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .foregroundColor(.white)
                    .shadow(radius: 1)
                   
                HStack{
                                
                    Text("\(size)")
                        .font(.headline)
                        .bold()
                }
            }
           
    }
}
struct SizeItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeItemView(size: "9.0")
    }
}
