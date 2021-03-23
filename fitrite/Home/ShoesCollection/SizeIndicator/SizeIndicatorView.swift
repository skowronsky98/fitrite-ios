import SwiftUI

struct SizeIndicatorView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var shoesCollectionManager: ShoesCollectionManager
    
    @ObservedObject var sizeIndicatorManager : SizeIndicatorManager
    
    @ObservedObject private var sizeChartManager = SizeChartManager()
    
    var body: some View {
        VStack {
            Image("\(sizeIndicatorManager.shoe.image)")
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            
            
            Text("\(sizeIndicatorManager.shoe.model)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(2)
            
            Text("\(sizeIndicatorManager.shoe.brand.name)")
                .font(.headline)
               
            
            SizeChartView(sizeChartManager: sizeChartManager).padding(.top,16).padding(.horizontal)
            
           
                Button(action: {
                    shoesCollectionManager.addShoeToCollection(id: shoesCollectionManager.randomString(length: 6), shoe: sizeIndicatorManager.shoe, size: SizeChartCollection.SizeCharts[0])
                    self.presentationMode.wrappedValue.dismiss()
                
                }) {
                    Text("Add to Collection")
                }.padding()
            
 
            Spacer()
            
        }.navigationBarTitle("Choose Size")
       
    }
}
struct AddShoeView_Previews: PreviewProvider {
    static var previews: some View {
        SizeIndicatorView(sizeIndicatorManager: SizeIndicatorManager(shoe: ShoesList.Shoes[0]))
    }
}

