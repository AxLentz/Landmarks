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
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
            LandmarkRow(landMark: landmarks[0])
                    .previewDisplayName(landmarks[0].name)
            LandmarkRow(landMark: landmarks[1])
                .previewDisplayName(landmarks[0].name)
        }
    }
}


