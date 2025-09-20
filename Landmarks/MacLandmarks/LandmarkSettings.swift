//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by Jason on 20/9/2025.
//

import SwiftUI

struct LandmarkSettings: View {
    
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium
    
    var body: some View {
        Form {
            Picker("Map Zoom", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
        }
        .frame(width: 300)
        .pickerStyle(.inline)
        .padding(80)
        .navigationTitle("Landmark Settings")
    }
}

#Preview {
    LandmarkSettings()
}
