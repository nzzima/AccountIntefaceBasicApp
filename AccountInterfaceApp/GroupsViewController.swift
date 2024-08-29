//
//  GroupsViewController.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

import UIKit

class GroupsViewController: UITableViewController {
    
    let groups = Groups.getGroupsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        tableView.rowHeight = 70
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let group = groups[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = group.name
        content.secondaryText = group.description
        content.image = UIImage(systemName: "person.2.circle")
        
        cell.contentConfiguration = content
        return cell
    }
}
