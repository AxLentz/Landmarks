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
                .cornerRadius(5)
            
            VStack(alignment: .leading, content: {
                Text(landMark.name)
                    .bold()
                Text(landMark.park)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            })
            
            Spacer()
            
            if landMark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundStyle(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landMark: landmarks[0])
        LandmarkRow(landMark: landmarks[1])
    }
}


