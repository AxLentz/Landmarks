//
//  ContentView.swift
//  Landmarks
//
//  Created by Jason on 5/7/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
