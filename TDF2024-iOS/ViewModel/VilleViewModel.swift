//
//  VilleViewModel.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/5/23.
//

import Foundation
import UIKit

class VilleViewModel: ObservableObject {
    @Published var villesDepart: [Ville] = []
    @Published var villesArrivee: [Ville] = []
    
    init() {
        setVilles()
    }
    
    private func setVilles() {
        for ville in Ville.allCases {
            if(ville.is_depart) {
                villesDepart.append(ville)
            } else {
                villesArrivee.append(ville)
            }
        }
    }
    
    /*func insertVille(name: String, country: Pays) {
        let ville = City(context: context)

        // Configurer ses propriétés
        ville.nom_ville = name
        ville.pays = country

        // Enregistrer l'objet dans le contexte de la base de données
        do {
            try context.save()
        } catch {
            print("Erreur lors de l'enregistrement : \(error)")
        }
    }*/
}
