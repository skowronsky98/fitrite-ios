//
//  SizeChartView.swift
//  fitrite
//
//  Created by Oskar Skowronski on 20/03/2021.
//

import SwiftUI


struct SizeChartView: View {
    @ObservedObject var sizeChartManager : SizeChartManager
    
    @State private var authPath = 1
    
    @Binding var sizeIndex: Int
    
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
                Picker("US", selection: $sizeIndex){
                    ForEach(0..<sizeChartManager.sizeChartCollection.count) {
                        Text("\(sizeChartManager.sizeChartCollection[$0].eu)").tag($0)
                    }
                }
                .frame(height: 120)
                .pickerStyle(WheelPickerStyle())
                .clipped()
                
            case 1:
                Picker("US", selection: $sizeIndex){
                    ForEach(0..<sizeChartManager.sizeChartCollection.count) {
                        Text("\(String(sizeChartManager.sizeChartCollection[$0].us))").tag($0)
                    }
                }
                .frame(height: 120)
                .pickerStyle(WheelPickerStyle())
                .clipped()
                           
                
            case 2:
                Picker("US", selection: $sizeIndex){
                    ForEach(0..<sizeChartManager.sizeChartCollection.count) {
                        Text("\(String(sizeChartManager.sizeChartCollection[$0].uk))").tag($0)
                    }
                }
                .frame(height: 120)
                .pickerStyle(WheelPickerStyle())
                .clipped()
                
                
            default:
                Text("ERR")
            }
            
         
        }
        .background(Color("Color.Background").edgesIgnoringSafeArea(.all))
        
    }
}
struct SizeChartView_Previews: PreviewProvider {
    static var previews: some View {
        SizeChartView(sizeChartManager: SizeChartManager(), sizeIndex: .constant(0))
    }
}


