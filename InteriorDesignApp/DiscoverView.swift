//
//  DiscoverView.swift
//  InteriorDesignApp
//
//  Created by Michelle Trinh on 3/16/24.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Click on the style you prefer")
                
                HStack {
                    Button {
                        
                    } label: {
                        ImageLoading(url: URL(string: "https://i.pinimg.com/564x/4d/44/ab/4d44ab82d0040b1a0fdf9e7bea4993ee.jpg")!)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }
                    
                    Button {
                        
                    } label: {
                        ImageLoading(url: URL(string: "https://i.pinimg.com/564x/52/8a/35/528a35e4d593ae8a97935b19c320663a.jpg")!)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }
                    
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        ImageLoading(url: URL(string: "https://i.pinimg.com/564x/3b/29/b7/3b29b70baface6eae4bdb4f376f74ba7.jpg")!)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }
                    
                    Button {
                        
                    } label: {
                        ImageLoading(url: URL(string: "https://i.pinimg.com/736x/38/55/9b/38559b1d0a75d845ab63582ad63e9e39.jpg")!)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }
                }
            }
        }
    }
}

#Preview {
    DiscoverView()
}
