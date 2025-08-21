//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Jason on 13/8/2025.
//

import SwiftUI

struct FeatureCard: View {
    
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
        
        //图片叠字-方式2:
//        ZStack(alignment: .bottomLeading) {
//            landmark.featureImage?
//                .resizable()
//            TextOverlay(landmark: landmark)
//        }
        
        //图片叠字-方式3:
//        TextOverlay(landmark: landmark)
//            .background {
//                landmark.featureImage?
//                    .resizable()
//            }
    }
}

struct TextOverlay: View {
    
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
                        startPoint: .bottom,
                        endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
                VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}


#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}
