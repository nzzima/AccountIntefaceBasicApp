//
//  ViewController.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(start_button)
        start_button.addTarget(self, action: #selector(didTapEnterButton), for: .touchUpInside)
        setupConstraints()
    }

    private var start_button: UIButton = {
       let button = UIButton()
        button.setTitle("Enter", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 45, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.layer.cornerRadius = 12
        button.backgroundColor = .black
        return button
    }()

    func setupConstraints() {
        start_button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            start_button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            start_button.topAnchor.constraint(equalTo: view.centerYAnchor),
            start_button.widthAnchor.constraint(equalToConstant: 200),
            start_button.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc private func didTapEnterButton() {
        let tab_friends = UINavigationController(rootViewController: FriendsViewController())
        let tab_groups = UINavigationController(rootViewController: GroupsViewController())
        let tab_photos = UINavigationController(rootViewController: PhotosViewController())
        
        tab_friends.tabBarItem.title = "Friends"
        tab_groups.tabBarItem.title = "Groups"
        tab_photos.tabBarItem.title = "Photos"
        
        let controllers = [tab_friends, tab_groups, tab_photos]
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = controllers
        
        guard let first_scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                                 let first_window = first_scene.windows.first else { return }
        
        first_window.rootViewController = tabBarController
    }
    
}

