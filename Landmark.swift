//
//  Landmark.swift
//  WorldLandmark
//
//  Created by 叶子 on 2021/10/1.
//  Copyright © 2021 elsaoo. All rights reserved.
//

import SwiftUI

struct Landmark: Identifiable {
    var id = UUID()
    var name: String
    var EnglishName: String
    var location: String
    
    var imageName: String {
        return EnglishName
    }
    var thumbnailName: String {
        return "\(EnglishName)(Thumb)"
    }
    
    
}

let landmarks = [
    Landmark(name: "景点一", EnglishName: "pic1", location: "北京"),
    Landmark(name: "景点二", EnglishName: "pic2", location: "纽约")
]

