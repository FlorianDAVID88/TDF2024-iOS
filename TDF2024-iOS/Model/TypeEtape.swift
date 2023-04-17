//
//  TypeEtape.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/5/23.
//

import Foundation

enum TypeEtape: String, CaseIterable {
    case Plaine = "Étape de plaine"
    case Accidentee = "Étape accidentée"
    case Montagne = "Étape de montagne"
    case HteMontagne = "Étape de haute-montagne"
    case ClmInd = "Contre-la-montre individuel"
    case ClmEq = "Contre-la-montre par équipes"
}
