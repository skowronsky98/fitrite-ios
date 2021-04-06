//
//  BrandItemView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 11/03/2021.
//

import SwiftUI

struct BrandItemView: View {

    var brand : Brand
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 5)
             

            HStack {
               
//                Image("\(brand.image)")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 120, height: 120)
//                    .padding(.horizontal,16)
                
                VStack {
                    Text("\(brand.name)")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.horizontal,8)
                }
                 
                Spacer()
  
            }
            
            

        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.vertical,4)
    }
    
}
    



struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: BrandList.Brands[0])
    }
}
