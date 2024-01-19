//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Jason on 26/12/2023.
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
