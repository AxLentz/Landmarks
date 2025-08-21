//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Jason on 21/7/2025.
//

import SwiftUI

struct CategoryHome: View {

    @Environment(ModelData.self) private var modelData
    @State private var showingProfile = false

    var body: some View {
        NavigationSplitView {
            List {
                //mock
//                modelData.features[0].image
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .clipped()
//                    .listRowInsets(EdgeInsets())
                
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
            .listStyle(.inset)
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Hello, World!")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
