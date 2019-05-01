//
//  PaintingController.swift
//  Art Gallery Project
//
//  Created by Corey Sessions on 4/30/19.
//  Copyright © 2019 Corey Sessions. All rights reserved.
//

import Foundation
import UIKit

var paintings: [Painting] = []



func loadPaintingFromAssets() {
    for i in 1...12 {
       var image = "Image\(i)"
        if let newImage = UIImage(named: image) {
            let painting = Painting(image: newImage)
            paintings.append(painting)
        }
    }
    print(paintings)
}

func toggleIsLiked(for painting: Painting) {
    painting.isLiked.toggle()
}
