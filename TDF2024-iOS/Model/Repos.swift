//
//  Repos.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/6/23.
//

import Foundation

struct Repos {
    var id_repos = UUID()
    var libelle_repos: String
    var ville_repos: String
    var pays_repos: Pays
    var date_repos: String
    
    static var allCases = [
        Repos(libelle_repos: "Repos 1", ville_repos: "Poitiers", pays_repos: .France, date_repos: "")
    ]
}
