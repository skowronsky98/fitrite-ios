//
//  SizeChartManager.swift
//  fitrite
//
//  Created by Oskar Skowronski on 19/03/2021.
//

import Foundation

class SizeChartManager: ObservableObject {
    @Published private var sizeChartModel: SizeChartCollection
    
    init() {
        sizeChartModel = SizeChartCollection(sizeChart: SizeChartCollection.SizeCharts)
    }
    
    var sizeChartCollection: [SizeChart] {
        sizeChartModel.sizeChart
    }
}
