//
//  SizeChartView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 20/03/2021.
//

import SwiftUI
import ExyteGrid

struct SizeChartView: View {
    @ObservedObject var sizeChartManager : SizeChartManager
    
    @State private var authPath = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker(selection: $authPath, label: Text("Authentication Path")) {
                Text("EU").tag(0)
                Text("US").tag(1)
                Text("UK").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            
            switch authPath {
            case 0:
                Grid(sizeChartManager.sizeChartCollection, tracks: 4) { item in
                    SizeItemView(size: item.eu)
                    
                }
                .animation(.default)
                .transition(.move(edge: .leading))
                
            case 1:
                Grid(sizeChartManager.sizeChartCollection, tracks: 4) { item in
                    SizeItemView(size: String(item.us))
                    
                }
                .animation(.default)
                .transition(.move(edge: .leading))
                
            case 2:
                Grid(sizeChartManager.sizeChartCollection, tracks: 4) { item in
                    SizeItemView(size: String(item.uk))
                    
                }
                .animation(.default)
                .transition(.move(edge: .leading))
                
                
            default:
                Text("ERR")
            }
            
         
        }
        .background(Color("Color.Background").edgesIgnoringSafeArea(.all))
        
    }
}
struct SizeChartView_Previews: PreviewProvider {
    static var previews: some View {
        SizeChartView(sizeChartManager: SizeChartManager())
    }
}


