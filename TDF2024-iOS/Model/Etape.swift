//
//  Etape.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import Foundation

struct Stage {
    var id_etape = UUID()
    var libelle_etape: String
    var type_etape: TypeEtape
    var longueur: Double
    var date: String
    var descriptif: String
    
    static var allCases = [
        Stage(libelle_etape: "Étape 1", type_etape: .Accidentee, longueur: 205, date: "29/06/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 2", type_etape: .Accidentee, longueur: 200, date: "30/06/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 3", type_etape: .Plaine, longueur: 225, date: "01/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 4", type_etape: .Montagne, longueur: 177, date: "02/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 5", type_etape: .Plaine, longueur: 215.3, date: "03/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 6", type_etape: .Montagne, longueur: 182, date: "04/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 7", type_etape: .HteMontagne, longueur: 151.4, date: "05/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 8", type_etape: .ClmInd, longueur: 29.8, date: "06/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 9", type_etape: .HteMontagne, longueur: 172.3, date: "07/072024", descriptif: ""),
        
        Stage(libelle_etape: "Étape 10", type_etape: .Accidentee, longueur: 201.1, date: "09/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 11", type_etape: .Plaine, longueur: 219.1, date: "10/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 12", type_etape: .Accidentee, longueur: 169.3, date: "11/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 13", type_etape: .Accidentee, longueur: 152.2, date: "12/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 14", type_etape: .Plaine, longueur: 170.2, date: "13/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 15", type_etape: .Montagne, longueur: 154.5, date: "14/07/2024", descriptif: ""),
        
        Stage(libelle_etape: "Étape 16", type_etape: .Plaine, longueur: 144.5, date: "16/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 17", type_etape: .HteMontagne, longueur: 153.2, date: "17/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 18", type_etape: .HteMontagne, longueur: 100.9, date: "18/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 19", type_etape: .Plaine, longueur: 196.6, date: "19/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 20", type_etape: .HteMontagne, longueur: 132, date: "20/07/2024", descriptif: ""),
        Stage(libelle_etape: "Étape 21", type_etape: .ClmInd, longueur: 35, date: "21/07/2024", descriptif: "")
    ]
    
    mutating func equalsTo(etape: Stage) -> Bool {
        return self.id_etape == etape.id_etape && self.libelle_etape == etape.libelle_etape && self.type_etape == etape.type_etape &&
                self.longueur == etape.longueur && self.date == etape.date && self.descriptif == etape.descriptif
    }
}
