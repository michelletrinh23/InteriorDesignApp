//
//  ImageLoading.swift
//  InteriorDesignApp
//
//  Created by Michelle Trinh on 3/12/24.
//

import SwiftUI

struct ImageLoading: View {
    let url: URL
    @State private var imageData: Data?
    
    init(url: URL) {
        self.url = url
    }
    
    var body: some View {
        if let imageData = imageData, let uiImage = UIImage(data: imageData) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
        } else {
            Text("Loading...")
                .onAppear(perform: loadImage)
        }
    }
    
    private func loadImage() {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Failed to load image from URL:", error?.localizedDescription ?? "Unknown error")
                return
            }
            DispatchQueue.main.async {
                self.imageData = data
            }
        }.resume()
    }
}


#Preview {
    ImageLoading(url: URL(string: "https://i.pinimg.com/564x/9f/11/54/9f11547adf8bec975060657f1fb10ddd.jpg")!)
}
