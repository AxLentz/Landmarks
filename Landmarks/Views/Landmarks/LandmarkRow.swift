//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jason on 2/11/2023.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landMark: Landmark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            
            Spacer()
            
            if landMark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landMark: landmarks[0])
        LandmarkRow(landMark: landmarks[1])
    }
}


