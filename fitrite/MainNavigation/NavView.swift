import SwiftUI

struct NavView: View {
    
    let collection = ShoesCollectionManager()
    
    var body: some View {
        
        TabView {
            ShoeCollectionView()
                .environmentObject(collection)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            DiscoverView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("Discover")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }   
}
