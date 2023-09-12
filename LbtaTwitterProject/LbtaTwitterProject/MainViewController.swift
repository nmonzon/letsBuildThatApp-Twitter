//
//  MainViewController.swift
//  LbtaTwitterProject
//
//  Created by Nicolas Monzon on 11/9/2023.
//

import UIKit

class MainViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .red
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(tappedOpen))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(tappedHide))
    }
    
    @objc func tappedOpen() {
        print("Opening...")
        let menuTableViewController = MenuTableViewController()
        let menuView = menuTableViewController.tableView
        menuView?.frame = CGRect(x: 0, y: 0, width: 300, height: self.tableView.frame.height)
        let window = UIApplication.shared.keyWindow
        window?.addSubview(menuTableViewController.tableView)
    }
    
    @objc func tappedHide() {
        print("Hiding...")
    }
}

extension MainViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }
}
