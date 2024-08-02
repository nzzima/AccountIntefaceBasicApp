//
//  CustomTableViewCell.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    private var circle: UIView = {
       let circle = UIView()
        circle.backgroundColor = .white
        circle.layer.borderColor = UIColor.black.cgColor
        circle.layer.borderWidth = 2
        circle.layer.cornerRadius = 25
        return circle
    }()
    
    private var name: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    public func setName(my_name: String) {
        name.text = my_name
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(circle)
        contentView.addSubview(name)
        setupConstraints()
    }
    
    private func setupConstraints() {
        circle.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            circle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            circle.heightAnchor.constraint(equalToConstant: 50),
            circle.widthAnchor.constraint(equalTo: circle.heightAnchor),
            name.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            name.leadingAnchor.constraint(equalTo: circle.leadingAnchor, constant: 65),
            name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 30)
        ])
    }
}
