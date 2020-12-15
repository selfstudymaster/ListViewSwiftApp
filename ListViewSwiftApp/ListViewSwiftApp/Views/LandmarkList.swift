//
//  LandmarkList.swift
//  LandmarksSwiftApp
//
//  Created by mac on 2020/12/15.
//  Copyright © 2020 mac. All rights reserved.
//
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            List(landmarkData) { landmark in
                
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("ListView"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
