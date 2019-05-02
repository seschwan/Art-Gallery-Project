//
//  PaintingController.swift
//  Art Gallery Project
//
//  Created by Corey Sessions on 4/30/19.
//  Copyright © 2019 Corey Sessions. All rights reserved.
//

import Foundation
import UIKit


class PaintingController {
    var paintings: [Painting] = []


    init() {
        loadPaintingFromAssets()
    }

func loadPaintingFromAssets() {
    for i in 1...12 {
        let image: String = "Image\(i)"
        guard let UIImage = UIImage(named: image) else { return }
        let painting = Painting(image: UIImage)
        paintings.append(painting)
    }
}

func toggleIsLiked(for painting: Painting) {
    painting.isLiked.toggle()
}

}
