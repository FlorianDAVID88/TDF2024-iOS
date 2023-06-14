//
//  TDFViewModel.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import Foundation

struct VilleEtape {
    var id_villeEtape = UUID()
    var num_etape: Int
    var name_ville: String
}

class TDFViewModel: ObservableObject {
    //@Published var lang: String = ""
    @Published var villeViewModel: VilleViewModel
    @Published var equipeViewModel: EquipeViewModel
    @Published var etapes: [Stage] = []
    @Published var repos: [Repos] = []
    
    init(villeViewModel: VilleViewModel, equipeViewModel: EquipeViewModel) {
        //self.lang = Locale.current.languageCode?.identifier
        self.villeViewModel = villeViewModel
        self.equipeViewModel = equipeViewModel
        etapes.append(contentsOf: Stage.allCases)
        repos.append(contentsOf: Repos.allCases)
    }
    
    func getDistanceTotale() -> Double {
        var sum: Double = 0.0
        for etape in etapes {
            sum += etape.longueur
        }
        return sum
    }
    
    func getNbEtapesFromType(type: TypeEtape) -> Int {
        var count = 0
        for etape in etapes {
            if etape.type_etape == type {
                count += 1
            }
        }
        return count
    }
    
    func getNbVillesDiff() -> Int {
        var villes: [Ville] = []
        for city in Ville.allCases {
            if !villes.contains(where: { $0.nom_ville == city.nom_ville }) {
                villes.append(city)
            }
        }
        return villes.count
    }
    
    func getSitesEtapesInedits() -> [VilleEtape] {
        var villes: [VilleEtape] = []
        for i in 1...villeViewModel.villesDepart.count {
            let depart = villeViewModel.villesDepart[i - 1]
            let arrivee = villeViewModel.villesArrivee[i - 1]
            if !villes.contains(where: { $0.name_ville == depart.nom_ville }) && depart.is_new {
                villes.append(VilleEtape(num_etape: i, name_ville: depart.nom_ville))
            }
            if !villes.contains(where: { $0.name_ville == arrivee.nom_ville }) && arrivee.is_new {
                villes.append(VilleEtape(num_etape: i, name_ville: arrivee.nom_ville))
            }
        }
        return villes
    }
    
    func getColsFromEtape(etape: Stage) -> [Col] {
        var cols: [Col] = []
        for var col in Col.allCases {
            if col.etape.equalsTo(etape: etape) {
                cols.append(col)
            }
        }
        return cols
    }
}
