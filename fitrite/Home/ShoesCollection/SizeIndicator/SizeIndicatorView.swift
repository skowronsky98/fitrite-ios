import SwiftUI

struct SizeIndicatorView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var shoesCollectionManager: ShoesCollectionManager
    
    @ObservedObject var sizeIndicatorManager : SizeIndicatorManager
    
    @ObservedObject private var sizeChartManager = SizeChartManager()
    
    @State private var sizeIndex = 0
    
    var body: some View {
        
        VStack {
           
            Image("\(sizeIndicatorManager.shoe.image)")
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
                .frame(height:220)
                
            
            
            Text("\(sizeIndicatorManager.shoe.model)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(2)
            
            Text("\(sizeIndicatorManager.shoe.brand.name)")
                .font(.headline)
            
            Spacer()
            
            SizeChartView(sizeChartManager: sizeChartManager, sizeIndex: $sizeIndex).padding(.top,16).padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                print(sizeIndex)
                shoesCollectionManager.addShoeToCollection(id: shoesCollectionManager.randomString(length: 6), shoe: sizeIndicatorManager.shoe, size: SizeChartCollection.SizeCharts[sizeIndex])
                self.presentationMode.wrappedValue.dismiss()
                
            }) {
                Text("Add to Collection")
            }.padding(.bottom)
           
           
          
            
            
        }.navigationBarTitle("Choose Size")
        
    }
}
struct AddShoeView_Previews: PreviewProvider {
    static var previews: some View {
        SizeIndicatorView(sizeIndicatorManager: SizeIndicatorManager(shoe: ShoesList.Shoes[0]))
    }
}

