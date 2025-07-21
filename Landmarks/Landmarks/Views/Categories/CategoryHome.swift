//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Jason on 21/7/2025.
//

import SwiftUI

struct CategoryHome: View {

    @Environment(ModelData.self) private var modelData

    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Hello, World!")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
