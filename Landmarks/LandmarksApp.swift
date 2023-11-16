//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jason on 25/10/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
