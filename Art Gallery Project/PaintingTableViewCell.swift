//
//  PaintingTableViewCell.swift
//  Art Gallery Project
//
//  Created by Corey Sessions on 4/30/19.
//  Copyright © 2019 Corey Sessions. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeUnlikeBtn: UIButton!
    
    
    
    var painting: Painting?
    
    func updateViews() {
        if let hasValue = painting {
            // paintingImageView.image = ?
        
        }
        
    }
    @IBAction func likeUnlikeBtnPressed(_ sender: UIButton) {
        
        
    }
    
}
