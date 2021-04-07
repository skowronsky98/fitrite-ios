//
//  ImageURL.swift
//  fitrite
//
//  Created by Oskar Skowronski on 07/04/2021.
//

import SwiftUI

struct ImageURL: View {
    
    @ObservedObject var imageLoader: ImageLoaderAndCache

       init(_ url: String) {
           imageLoader = ImageLoaderAndCache(imageURL: url)
       }
    var body: some View {
        Image(uiImage: UIImage(data: self.imageLoader.imageData) ?? UIImage())
                     .resizable()
                     .clipped()
    }
}



class ImageLoaderAndCache: ObservableObject {
    
    @Published var imageData = Data()
    
    init(imageURL: String) {
        let cache = URLCache.shared
        
        guard let url = URL(string: imageURL)
               else{
                   print("Invalid URL")
                   return
               }
        let request = URLRequest(url: url, cachePolicy: URLRequest.CachePolicy.returnCacheDataElseLoad, timeoutInterval: 60.0)
        if let data = cache.cachedResponse(for: request)?.data {
            print("got image from cache")
            self.imageData = data
        } else {
            URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
                if let data = data, let response = response {
                let cachedData = CachedURLResponse(response: response, data: data)
                                    cache.storeCachedResponse(cachedData, for: request)
                    DispatchQueue.main.async {
                        print("downloaded from internet")
                        self.imageData = data
                    }
                }
            }).resume()
        }
    }
}
