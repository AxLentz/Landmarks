//
//  ContentView.swift
//  Landmarks
//
//  Created by Jason on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}


