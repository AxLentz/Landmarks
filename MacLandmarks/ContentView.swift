//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Jason on 27/1/2024.
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
}
