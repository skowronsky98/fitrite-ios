import Foundation

struct SizeChartCollection{
    static var SizeCharts = [SizeChart] (arrayLiteral:
                                            SizeChart(id: "a", eu: "40.5", type: "m", uk: 8.0, us: 9.0, brand: BrandList.Brands[0]),
                                            SizeChart(id: "s", eu: "41", type: "m", uk: 8.5, us: 9.9, brand: BrandList.Brands[0]),
                                            SizeChart(id: "1", eu: "40.5", type: "m", uk: 8.0, us: 9.0, brand: BrandList.Brands[0]),
                                            SizeChart(id: "2", eu: "41", type: "m", uk: 8.5, us: 9.9, brand: BrandList.Brands[0]),
                                            SizeChart(id: "3", eu: "42.5", type: "m", uk: 8.0, us: 9.0, brand: BrandList.Brands[0]),
                                            SizeChart(id: "4", eu: "43", type: "m", uk: 8.5, us: 9.9, brand: BrandList.Brands[0]),
                                            SizeChart(id: "5", eu: "44", type: "m", uk: 9.0, us: 10.0, brand: BrandList.Brands[0]),
                                            SizeChart(id: "7", eu: "41 1/3", type: "m", uk: 7.5, us: 8.5, brand: BrandList.Brands[1]),
                                            SizeChart(id: "8", eu: "41", type: "m", uk: 8.5, us: 9.9, brand: BrandList.Brands[0]),
                                            SizeChart(id: "9", eu: "42.5", type: "m", uk: 8.0, us: 9.0, brand: BrandList.Brands[0]),
                                            SizeChart(id: "10", eu: "43", type: "m", uk: 8.5, us: 9.9, brand: BrandList.Brands[0]),
                                            SizeChart(id: "11", eu: "44", type: "m", uk: 9.0, us: 10.0, brand: BrandList.Brands[0]),
                                            SizeChart(id: "12", eu: "41 1/3", type: "m", uk: 7.5, us: 8.5, brand: BrandList.Brands[1]),
                                            SizeChart(id: "13", eu: "42 2/3", type: "m", uk: 8.0, us: 9.0, brand: BrandList.Brands[1]),
                                            SizeChart(id: "14", eu: "43 1/3", type: "m", uk: 8.5, us: 9.5, brand: BrandList.Brands[1]),
                                            SizeChart(id: "15", eu: "44", type: "m", uk: 9.5, us: 10.0, brand: BrandList.Brands[1]))
    var sizeChart = [SizeChart]()
    
    init() {}
    
    init(sizeChart: [SizeChart]) {
        self.sizeChart = sizeChart
    }
}


struct SizeChart: Codable, Identifiable {
    var id: String
    var eu: String
    var type: String
    var uk: Double
    var us: Double
    var brand: Brand
}

