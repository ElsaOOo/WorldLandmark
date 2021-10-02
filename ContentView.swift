//
//  ContentView.swift
//  WorldLandmark
//
//  Created by 叶子 on 2021/10/1.
//  Copyright © 2021 elsaoo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                Cell(landmark: landmark)
            }
            .navigationBarTitle("世界地标")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Cell: View {
    let landmark: Landmark
    
    var body: some View {
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            Image(landmark.thumbnailName)
            VStack(alignment: .leading) {
                Text(landmark.name)
                Text(landmark.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
