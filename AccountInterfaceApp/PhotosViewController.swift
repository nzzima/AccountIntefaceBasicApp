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
        view.addSubview(car3)
        view.addSubview(car4)
        view.addSubview(car5)
        view.addSubview(car6)
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
    
    private var car3: UIImageView = {
       let imageView = UIImageView(image: UIImage(named: "car3"))
            imageView.layer.borderWidth = 3.0
            imageView.layer.borderColor = UIColor.lightGray.cgColor
            imageView.clipsToBounds = true
            return imageView
    }()
    
    private var car4: UIImageView = {
       let imageView = UIImageView(image: UIImage(named: "car4"))
            imageView.layer.borderWidth = 3.0
            imageView.layer.borderColor = UIColor.lightGray.cgColor
            imageView.clipsToBounds = true
            return imageView
    }()
    
    private var car5: UIImageView = {
       let imageView = UIImageView(image: UIImage(named: "car5"))
            imageView.layer.borderWidth = 3.0
            imageView.layer.borderColor = UIColor.lightGray.cgColor
            imageView.clipsToBounds = true
            return imageView
    }()
    
    private var car6: UIImageView = {
       let imageView = UIImageView(image: UIImage(named: "car6"))
            imageView.layer.borderWidth = 3.0
            imageView.layer.borderColor = UIColor.lightGray.cgColor
            imageView.clipsToBounds = true
            return imageView
    }()
    
    func setupConstraints () {
        car1.translatesAutoresizingMaskIntoConstraints = false
        car2.translatesAutoresizingMaskIntoConstraints = false
        car3.translatesAutoresizingMaskIntoConstraints = false
        car4.translatesAutoresizingMaskIntoConstraints = false
        car5.translatesAutoresizingMaskIntoConstraints = false
        car6.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            car1.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            car1.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            car1.widthAnchor.constraint(equalToConstant: 160),
            car1.heightAnchor.constraint(equalToConstant: 100),
            
            car2.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            car2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            car2.widthAnchor.constraint(equalToConstant: 160),
            car2.heightAnchor.constraint(equalToConstant: 100),
            
            car3.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            car3.centerYAnchor.constraint(equalTo: car1.bottomAnchor, constant: 80),
            car3.widthAnchor.constraint(equalToConstant: 160),
            car3.heightAnchor.constraint(equalToConstant: 100),
            
            car4.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            car4.centerYAnchor.constraint(equalTo: car2.bottomAnchor, constant: 80),
            car4.widthAnchor.constraint(equalToConstant: 160),
            car4.heightAnchor.constraint(equalToConstant: 100),
            
            car5.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            car5.centerYAnchor.constraint(equalTo: car3.bottomAnchor, constant: 80),
            car5.widthAnchor.constraint(equalToConstant: 160),
            car5.heightAnchor.constraint(equalToConstant: 100),
            
            car6.centerXAnchor.constraint(equalTo: view.leftAnchor, constant: 280),
            car6.centerYAnchor.constraint(equalTo: car4.bottomAnchor, constant: 80),
            car6.widthAnchor.constraint(equalToConstant: 160),
            car6.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
