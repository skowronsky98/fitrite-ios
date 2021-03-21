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
            .frame(width: 80, height: 50, alignment: .center)
            
        
        
       
       
    }
}
struct SizeItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeItemView(size: "9.0")
    }
}
