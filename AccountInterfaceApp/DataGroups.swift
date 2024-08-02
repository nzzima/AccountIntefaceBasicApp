//
//  DataGroups.swift
//  AccountInterfaceApp
//
//  Created by Nikita Krylov on 02.08.2024.
//

struct Groups {
    let name: String
    let description: String
}

extension Groups {
    static func getGroupsList() -> [Groups] {
        [
            Groups(name: "IOS", description: "Instructions for progs"),
            Groups(name: "Android", description: "Manual"),
            Groups(name: "Windows", description: "Microsoft details"),
            Groups(name: "Linux", description: "UNIX manual")
        ]
    }
}
