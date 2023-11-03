//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jason on 3/11/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(landMark: landmarks[0])
            LandmarkRow(landMark: landmarks[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
