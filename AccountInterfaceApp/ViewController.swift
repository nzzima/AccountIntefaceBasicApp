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
        print("Enter provided!")
    }
}

