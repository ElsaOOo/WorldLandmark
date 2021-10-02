//
//  LandmarkDetail.swift
//  WorldLandmark
//
//  Created by 叶子 on 2021/10/2.
//  Copyright © 2021 elsaoo. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    @State private var zoomed = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(landmark.imageName)
            .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.7)) {
                    self.zoomed.toggle()
                }
            }
            if (!zoomed) {
                Text(landmark.location)
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding(.all)
                    .transition(.move(edge: .trailing))
            }

            
        }
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkDetail(landmark: landmarks[0])
        }
    }
}
