//
//  PaintingTableViewCell.swift
//  Art Gallery Project
//
//  Created by Corey Sessions on 4/30/19.
//  Copyright © 2019 Corey Sessions. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonTapped(on cell: PaintingTableViewCell)
}


class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeUnlikeBtn: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        if painting.isLiked {
            likeUnlikeBtn.setTitle("Unlike", for: .normal)
        } else {
            likeUnlikeBtn.setTitle("Like", for: .normal)
        }
        
    }
    @IBAction func likeUnlikeBtnPressed(_ sender: UIButton) {
        delegate?.likeButtonTapped(on: self)
        
    }
    
}
