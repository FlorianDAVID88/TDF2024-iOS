//
//  Etape.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import Foundation

enum TypeEtape: String, CaseIterable {
    case plaine = "Étape de plaine"
    case accidentee = "Étape accidentée"
    case montagne = "Étape de montagne"
    case hteMontagne = "Étape de haute-montagne"
    case clmInd = "Contre-la-montre individuel"
    case clmEq = "Contre-la-montre par équipes"
}

struct Etape {
    var id_etape = UUID()
    var type_etape: TypeEtape
}
