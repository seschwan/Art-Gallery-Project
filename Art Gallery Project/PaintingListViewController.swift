//
//  ViewController.swift
//  Art Gallery Project
//
//  Created by Corey Sessions on 4/30/19.
//  Copyright © 2019 Corey Sessions. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController {
    

    
    @IBOutlet weak var tableView: UITableView!
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadPaintingFromAssets()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
    
    

}

