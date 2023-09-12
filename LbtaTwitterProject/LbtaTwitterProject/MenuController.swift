//
//  MenuTableViewController.swift
//  LbtaTwitterProject
//
//  Created by Nicolas Monzon on 11/9/2023.
//

import UIKit

class MenuController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .yellow
    }
}

extension MenuController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Menu Item Row: \(indexPath.row)"
        return cell
    }
}
