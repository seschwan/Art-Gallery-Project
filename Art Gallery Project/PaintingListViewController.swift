//
//  ViewController.swift
//  Art Gallery Project
//
//  Created by Corey Sessions on 4/30/19.
//  Copyright © 2019 Corey Sessions. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingTableViewCellDelegate {
    func likeButtonTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(for: painting)
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingTableViewCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        
        let painting = paintingController.paintings[indexPath.row]
        cell.delegate = self
        cell.painting = painting
        
        return cell
        
    }
    
    

}

