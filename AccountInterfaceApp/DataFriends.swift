//
//  DataFriends.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

struct Friends {
    let name: String
    let message: String
    
    var title: String {
        "\(name) - \(message)"
    }
}

extension Friends {
    static func getFriendsList() -> [Friends] {
        [
        Friends(name: "Sergey", message: "Meet me at 7 am"),
        Friends(name: "Jhon", message: "That was incredible"),
        Friends(name: "Eliza", message: "Hi"),
        Friends(name: "George", message: "Bite me ^_^"),
        Friends(name: "Fiona", message: "Just a minute plz...")
        ]
    }
}
