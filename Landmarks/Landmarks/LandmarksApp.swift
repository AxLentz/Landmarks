//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jason on 5/7/2025.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
