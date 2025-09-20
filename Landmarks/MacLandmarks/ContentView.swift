//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Jason on 14/9/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
