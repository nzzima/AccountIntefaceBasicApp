//
//  FriendsViewController.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    let friends = Friends.getFriendsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        tableView.rowHeight = 70
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = friends[indexPath.row]
        
        cell.textLabel?.text = person.name
        cell.imageView?.image = UIImage(systemName: "person")
        
        return cell
    }
}
