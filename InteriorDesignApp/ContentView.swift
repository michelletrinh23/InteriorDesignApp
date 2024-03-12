//
//  ContentView.swift
//  InteriorDesignApp
//
//  Created by Michelle Trinh on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var designStyle = "Minimalistic"
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "house")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("your interior design style is: \(designStyle)")
                    .navigationTitle("welcome home.")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        Button ("discover") {}
                    }
                
                ImageLoading(url: URL(string: "https://i.pinimg.com/564x/9f/11/54/9f11547adf8bec975060657f1fb10ddd.jpg")!)
                
                ImageLoading(url: URL(string: "https://i.pinimg.com/564x/70/5b/b0/705bb0208ce7ce3c7aad03256343f33b.jpg")!)
                
                ImageLoading(url: URL(string: "https://i.pinimg.com/564x/59/10/11/591011e5b5681201dee82b1ecce06a80.jpg")!)
                
                
            
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
