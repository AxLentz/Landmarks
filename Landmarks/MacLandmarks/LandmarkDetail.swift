//
//  LandmarkDetail.swift
//  MacLandmarks
//
//  Created by Jason on 14/9/2025.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    @Environment(ModelData.self) private var modelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        @Bindable var modelData = modelData

        ScrollView {
//            // official style
//            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
//                MapView(coordinate: landmark.locationCoordinate)
//                    .frame(height: 300)
//                
//                Button("Open in Maps") {
//                    let destination = MKMapItem(placemark: MKPlacemark(coordinate: landmark.locationCoordinate))
//                    destination.name = landmark.name
//                    destination.openInMaps()
//                }
//                .padding()
//            }
            
            // overlay style, claude: overlay 在语义和维护性上略胜一筹，但差距不大
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .overlay(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                    Button("Open in Maps") {
                        let destination = MKMapItem(placemark: MKPlacemark(coordinate: landmark.locationCoordinate))
                        destination.name = landmark.name
                        destination.openInMaps()
                    }
                    .padding()
                })
            
            
            VStack(alignment: .leading, spacing: 20) {
                
                HStack(spacing: 24) {
                    CircleImage(image: landmark.image.resizable())
                        .frame(width: 160, height: 160)
                    VStack(alignment: .leading) {
                        // large title + star
                        HStack {
                            Text(landmark.name)
                                .font(.title)
                            FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                                .buttonStyle(.plain)
                        }
                        
                        // park name + state name
                        VStack(alignment: .leading) {
                            Text(landmark.park)
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    }
                }
                
                Divider()
                
                // desc
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            .offset(y: -50)
            .frame(maxWidth: 700)
        }
        .navigationTitle(landmark.name)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
        .frame(width: 850, height: 700)
}

