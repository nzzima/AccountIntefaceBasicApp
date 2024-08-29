//
//  PhotosViewController.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

import UIKit

class PhotosViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(car1)
        view.addSubview(car2)
        setupConstraints()
    }
    
    private var car1: UIImageView = {
       let imageView = UIImageView(image: UIImage(named: "car1"))
            imageView.layer.borderWidth = 3.0
            imageView.layer.borderColor = UIColor.lightGray.cgColor
            imageView.clipsToBounds = true
            return imageView
    }()
    
    private var car2: UIImageView = {
       let imageView = UIImageView(image: UIImage(named: "car2"))
            imageView.layer.borderWidth = 3.0
            imageView.layer.borderColor = UIColor.lightGray.cgColor
            imageView.clipsToBounds = true
            return imageView
    }()
    
    func setupConstraints () {
        car1.translatesAutoresizingMaskIntoConstraints = false
        car2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            car1.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            car1.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            car1.widthAnchor.constraint(equalToConstant: 160),
            car1.heightAnchor.constraint(equalToConstant: 100),
            car2.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            car2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            car2.widthAnchor.constraint(equalToConstant: 160),
            car2.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
