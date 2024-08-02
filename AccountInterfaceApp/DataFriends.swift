//
//  DataFriends.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

struct Friends {
    let name: String
}

extension Friends {
    static func getFriendsList() -> [Friends] {
        [
        Friends(name: "Sergey"),
        Friends(name: "Jhon"),
        Friends(name: "Eliza"),
        Friends(name: "George"),
        Friends(name: "Fiona")
        ]
    }
}
