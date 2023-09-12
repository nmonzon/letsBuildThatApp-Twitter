//
//  MainViewController.swift
//  LbtaTwitterProject
//
//  Created by Nicolas Monzon on 11/9/2023.
//

import UIKit

class HomeController: UITableViewController {
    
    private let menuWidth = 300.0
    private let menuController = MenuController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .red
        
        setupNavigationButtons()
    }
    
    private func setupNavigationButtons() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(tappedOpen))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(tappedHide))
    }
    
    @objc func tappedOpen() {
        print("Opening...")
        menuController.tableView.frame = CGRect(x: -menuWidth, y: 0, width: menuWidth, height: self.tableView.frame.height)
        let window = UIApplication.shared.keyWindow
        window?.addSubview(menuController.tableView)
        addChild(menuController)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1) {
            self.menuController.tableView.transform = CGAffineTransform(translationX: self.menuWidth, y: 0)
        }
        
    }
    
    @objc func tappedHide() {
        print("Hiding...")
        menuController.removeFromParent()
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1) {
            self.menuController.tableView.transform = .identity
        }
    }
}

extension HomeController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }
}
