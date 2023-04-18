//
//  EquipeViewModel.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/18/23.
//

import Foundation

class EquipeViewModel: ObservableObject {
    @Published var equipes: [Equipe] = []
    @Published var coureurs: [Coureur] = []
    
    init() {
        equipes.append(contentsOf: Equipe.allCases)
        coureurs.append(contentsOf: Coureur.allCases)
    }
    
    func getCoureursFromEquipe(equipe: Equipe) -> [Coureur] {
        var all: [Coureur] = []
        for var coureur in coureurs {
            if coureur.equipe.equalsTo(equipe: equipe) {
                all.append(coureur)
            }
        }
        return all
    }
}
