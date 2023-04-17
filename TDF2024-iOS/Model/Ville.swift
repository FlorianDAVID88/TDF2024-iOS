//
//  Ville.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/5/23.
//

import Foundation
import CoreData

@objc(City)
public class City: NSManagedObject {
    @NSManaged public var id_ville: UUID
    @NSManaged public var nom_ville: String?
    @NSManaged public var is_depart: Bool
    @NSManaged public var name_pays: String?
}

extension City {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<City> {
        return NSFetchRequest<City>(entityName: "VilleTDF")
    }
    
    var pays: Pays? {
        get {
            guard let paysNom = self.name_pays else { return nil }
            return Pays(rawValue: paysNom)
        }
        set {
            self.name_pays = newValue?.rawValue
        }
    }
}

struct Ville {
    var id_ville = UUID()
    var nom_ville: String
    var is_new: Bool
    var is_depart: Bool
    var pays: Pays
    
    static let allCases = [
        Ville(nom_ville: "Florence", is_new: true, is_depart: true, pays: .Italie), Ville(nom_ville: "Rimini", is_new: true, is_depart: false, pays: .Italie),
        Ville(nom_ville: "Cesenatico", is_new: true, is_depart: true, pays: .Italie), Ville(nom_ville: "Bologne", is_new: true, is_depart: false, pays: .Italie),
        Ville(nom_ville: "Plaisance", is_new: true, is_depart: true, pays: .Italie), Ville(nom_ville: "Turin", is_new: false, is_depart: false, pays: .Italie),
        Ville(nom_ville: "Briançon", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Gap", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Carpentras", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Béziers", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Limoux", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Les Monts-d'Olmes", is_new: true, is_depart: false, pays: .France),
        Ville(nom_ville: "Cazères-sur-Garonne", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Bagnères-de-Luchon", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Tarbes", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Tarbes", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Pau", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Lac de Payolle", is_new: false, is_depart: false, pays: .France),
        
        Ville(nom_ville: "Futuroscope", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Tours", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Le Mans", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Gien", is_new: true, is_depart: false, pays: .France),
        Ville(nom_ville: "Joigny", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Bar-sur-Aube", is_new: true, is_depart: false, pays: .France),
        Ville(nom_ville: "Is-sur-Tille", is_new: true, is_depart: true, pays: .France), Ville(nom_ville: "Besançon", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Besançon", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Nantua", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Bellegarde-sur-Valserine", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Station des Rousses", is_new: false, is_depart: false, pays: .France),
        
        Ville(nom_ville: "Saint-Laurent-en-Grandvaux", is_new: true, is_depart: true, pays: .France), Ville(nom_ville: "Montreux", is_new: true, is_depart: false, pays: .Suisse),
        Ville(nom_ville: "Montreux", is_new: true, is_depart: true, pays: .Suisse), Ville(nom_ville: "Verbier", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Megève", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Plateau de Solaison", is_new: true, is_depart: false, pays: .France),
        Ville(nom_ville: "Grenoble", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Vaison-la-Romaine", is_new: false, is_depart: false, pays: .France),
        Ville(nom_ville: "Nice", is_new: false, is_depart: true, pays: .France), Ville(nom_ville: "Col de la Couillole", is_new: true, is_depart: false, pays: .France),
        Ville(nom_ville: "Monaco", is_new: false, is_depart: true, pays: .Monaco), Ville(nom_ville: "Nice", is_new: false, is_depart: false, pays: .France)
    ]
}
