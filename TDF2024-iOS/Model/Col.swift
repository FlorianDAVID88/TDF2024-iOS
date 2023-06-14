//
//  Col.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import Foundation

enum CategoryCol: String, CaseIterable {
    case HC = "Hors catégorie"
    case C1 = "1ère catégorie"
    case C2 = "2ème catégorie"
    case C3 = "3ème catégorie"
    case C4 = "4ème catégorie"
    case NR = "Non répertoriée"
}

struct Col {
    var id_col: UUID
    var nom_col: String
    var nb_km: Decimal
    var pourcentage: Decimal
    var altitude: Int
    var situation_km: Decimal
    var cat_col: CategoryCol
    var etape: Stage
    var pays: Pays
    
    init(nom_col: String, nb_km: Decimal, pourcentage: Decimal, altitude: Int, situation_km: Decimal, cat_col: CategoryCol, id_etape: Int, pays: Pays) {
        self.id_col = UUID()
        self.nom_col = nom_col
        self.nb_km = nb_km
        self.pourcentage = pourcentage
        self.altitude = altitude
        self.situation_km = situation_km
        self.cat_col = cat_col
        self.etape = Stage.allCases[id_etape - 1]
        self.pays = pays
    }
    
    static var allCases = [
        Col(nom_col: "Col de Valico Tre Faggi", nb_km: 12.5, pourcentage: 5.1, altitude: 930, situation_km: 49, cat_col: .C1, id_etape: 1, pays: .Italie),
        Col(nom_col: "Côte des Forche", nb_km: 2.5, pourcentage: 6.2, altitude: 430, situation_km: 78, cat_col: .C4, id_etape: 1, pays: .Italie),
        Col(nom_col: "Côte de Spinello", nb_km: 7.1, pourcentage: 6, altitude: 707, situation_km: 95, cat_col: .C2, id_etape: 1, pays: .Italie),
        Col(nom_col: "Côte de Barbotto", nb_km: 5.8, pourcentage: 7.6, altitude: 584, situation_km: 136, cat_col: .C2, id_etape: 1, pays: .Italie),
        Col(nom_col: "Côte de San Leo", nb_km: 4.6, pourcentage: 7.7, altitude: 572, situation_km: 158, cat_col: .C2, id_etape: 1, pays: .Italie),
        Col(nom_col: "Côte de Montemaggio", nb_km: 4.2, pourcentage: 6.6, altitude: 508, situation_km: 167, cat_col: .C2, id_etape: 1, pays: .Italie),
        Col(nom_col: "Côte de Saint-Martin", nb_km: 7.1, pourcentage: 4.8, altitude: 648, situation_km: 180, cat_col: .C3, id_etape: 1, pays: .SM),

        Col(nom_col: "Côte de Monticino", nb_km: 2, pourcentage: 7.5, altitude: 250, situation_km: 76, cat_col: .C3, id_etape: 2, pays: .Italie),
        Col(nom_col: "Côte de Gallisterna", nb_km: 1.2, pourcentage: 12.8, altitude: 257, situation_km: 91, cat_col: .C2, id_etape: 2, pays: .Italie),
        Col(nom_col: "Côte de Botteghino di Zocca", nb_km: 1.9, pourcentage: 6.8, altitude: 242, situation_km: 140, cat_col: .C4, id_etape: 2, pays: .Italie),
        Col(nom_col: "Côte de Montecalvo", nb_km: 2.7, pourcentage: 7.7, altitude: 309, situation_km: 152, cat_col: .C3, id_etape: 2, pays: .Italie),
        Col(nom_col: "Côte de San Luca", nb_km: 1.9, pourcentage: 10.6, altitude: 265, situation_km: 169, cat_col: .C2, id_etape: 2, pays: .Italie),
        Col(nom_col: "Côte de San Luca", nb_km: 1.9, pourcentage: 10.6, altitude: 265, situation_km: 188, cat_col: .C2, id_etape: 2, pays: .Italie),

        Col(nom_col: "Côte de Tortone - Fausto Coppi", nb_km: 1.1, pourcentage: 6.3, altitude: 190, situation_km: 71, cat_col: .C4, id_etape: 3, pays: .Italie),
        Col(nom_col: "Côte de Barbaresco", nb_km: 1.5, pourcentage: 6.5, altitude: 263, situation_km: 154, cat_col: .C4, id_etape: 3, pays: .Italie),
        Col(nom_col: "Côte de Sommariva Perno", nb_km: 3.1, pourcentage: 4.6, altitude: 368, situation_km: 179, cat_col: .C4, id_etape: 3, pays: .Italie),

        Col(nom_col: "Côte de Puy-Sanières", nb_km: 5.8, pourcentage: 6.1, altitude: 1215, situation_km: 52, cat_col: .C2, id_etape: 4, pays: .France),
        Col(nom_col: "Col Lebraut", nb_km: 4.5, pourcentage: 6.1, altitude: 1110, situation_km: 79.5, cat_col: .C2, id_etape: 4, pays: .France),
        Col(nom_col: "Côte de Piégut", nb_km: 4.2, pourcentage: 8.2, altitude: 1050, situation_km: 104.5, cat_col: .C2, id_etape: 4, pays: .France),
        Col(nom_col: "Côte des Garcins", nb_km: 4.3, pourcentage: 9.7, altitude: 1115, situation_km: 124.5, cat_col: .C1, id_etape: 4, pays: .France),
        Col(nom_col: "Côte deq Prés Hauts", nb_km: 9.1, pourcentage: 5.3, altitude: 1177, situation_km: 148, cat_col: .C2, id_etape: 4, pays: .France),
        Col(nom_col: "Col des Mutas", nb_km: 6.3, pourcentage: 8.2, altitude: 1342, situation_km: 165.5, cat_col: .C1, id_etape: 4, pays: .France),
        
        Col(nom_col: "Mont Saint-Clair", nb_km: 1.3, pourcentage: 11.5, altitude: 176, situation_km: 158, cat_col: .C3, id_etape: 5, pays: .France),

        Col(nom_col: "Côte d'Al Bouich", nb_km: 6.4, pourcentage: 8, altitude: 725, situation_km: 12.5, cat_col: .C2, id_etape: 6, pays: .France),
        Col(nom_col: "Col de Paradis", nb_km: 5.9, pourcentage: 4.5, altitude: 624, situation_km: 37, cat_col: .C3, id_etape: 6, pays: .France),
        Col(nom_col: "Col de Redoulade", nb_km: 3, pourcentage: 5.7, altitude: 702, situation_km: 55.5, cat_col: .C3, id_etape: 6, pays: .France),
        Col(nom_col: "Col deu Pas du Corps", nb_km: 9.4, pourcentage: 7.6, altitude: 1136, situation_km: 112, cat_col: .C1, id_etape: 6, pays: .France),
        Col(nom_col: "Côte d'Espezel", nb_km: 2.8, pourcentage: 5.9, altitude: 902, situation_km: 133, cat_col: .C4, id_etape: 6, pays: .France),
        Col(nom_col: "Col de Montségur", nb_km: 6.8, pourcentage: 6.6, altitude: 1059, situation_km: 164.5, cat_col: .C2, id_etape: 6, pays: .France),
        Col(nom_col: "LES MONTS-D'OLMES", nb_km: 14.4, pourcentage: 4.8, altitude: 1491, situation_km: 182, cat_col: .C1, id_etape: 6, pays: .France),

        Col(nom_col: "Côte du Prat Hameau", nb_km: 1.6, pourcentage: 9.6, altitude: 547, situation_km: 20.5, cat_col: .C3, id_etape: 7, pays: .France),
        Col(nom_col: "Col de Portet-d'Aspet", nb_km: 5.5, pourcentage: 6.9, altitude: 1069, situation_km: 69, cat_col: .C2, id_etape: 7, pays: .France),
        Col(nom_col: "Col de Menté", nb_km: 6.9, pourcentage: 8.1, altitude: 1346, situation_km: 84.5, cat_col: .C1, id_etape: 7, pays: .France),
        Col(nom_col: "Port de Balès", nb_km: 11.7, pourcentage: 7.8, altitude: 1754, situation_km: 130, cat_col: .HC, id_etape: 7, pays: .France),

        Col(nom_col: "Côte de Louey", nb_km: 1.2, pourcentage: 6.6, altitude: 416, situation_km: 10, cat_col: .NR, id_etape: 8, pays: .France),
        Col(nom_col: "Côte des Châtaigniers", nb_km: 0.7, pourcentage: 11.7, altitude: 442, situation_km: 22, cat_col: .NR, id_etape: 8, pays: .France),

        Col(nom_col: "Col de Spandelles", nb_km: 10.3, pourcentage: 8.3, altitude: 1380, situation_km: 47, cat_col: .C1, id_etape: 9, pays: .France),
        Col(nom_col: "Col du Tourmalet", nb_km: 19, pourcentage: 7.4, altitude: 2115, situation_km: 101.5, cat_col: .HC, id_etape: 9, pays: .France),
        Col(nom_col: "Hourquette d'Ancizan", nb_km: 8.2, pourcentage: 5.1, altitude: 1564, situation_km: 135.5, cat_col: .C2, id_etape: 9, pays: .France),
        Col(nom_col: "Col de Beyrède", nb_km: 9.9, pourcentage: 7.8, altitude: 1426, situation_km: 166, cat_col: .C1, id_etape: 9, pays: .France),

        Col(nom_col: "Côte de la Rochère", nb_km: 0.4, pourcentage: 11.3, altitude: 96, situation_km: 172, cat_col: .C4, id_etape: 10, pays: .France),
        Col(nom_col: "Côte de la Vallée Chartier", nb_km: 0.6, pourcentage: 6.8, altitude: 93, situation_km: 178, cat_col: .C4, id_etape: 10, pays: .France),
        Col(nom_col: "Côte de Rochecorbon", nb_km: 0.5, pourcentage: 6.6, altitude: 97, situation_km: 190, cat_col: .NR, id_etape: 10, pays: .France),

        Col(nom_col: "Côte de Ricey-Bas", nb_km: 2.6, pourcentage: 4.4, altitude: 297, situation_km: 86, cat_col: .C4, id_etape: 12, pays: .France),
        Col(nom_col: "Côte de Celles-sur-Ource", nb_km: 1.2, pourcentage: 7.9, altitude: 263, situation_km: 118, cat_col: .C3, id_etape: 12, pays: .France),
        Col(nom_col: "Côte du Val des Clos", nb_km: 0.9, pourcentage: 8.9, altitude: 296, situation_km: 127.5, cat_col: .C3, id_etape: 12, pays: .France),
        Col(nom_col: "Côte du Signal", nb_km: 0.8, pourcentage: 10.9, altitude: 332, situation_km: 137, cat_col: .C3, id_etape: 12, pays: .France),
        Col(nom_col: "Côte de Vitry", nb_km: 0.9, pourcentage: 7.1, altitude: 298, situation_km: 148.5, cat_col: .C4, id_etape: 12, pays: .France),
        Col(nom_col: "Côte des Bergères", nb_km: 1.7, pourcentage: 5.1, altitude: 330, situation_km: 160, cat_col: .C4, id_etape: 12, pays: .France),
        Col(nom_col: "Côte du Val Perdu", nb_km: 2.6, pourcentage: 4.4, altitude: 311, situation_km: 164, cat_col: .NR, id_etape: 12, pays: .France),

        Col(nom_col: "Côte des Trois Fontaines", nb_km: 1.8, pourcentage: 6.8, altitude: 368, situation_km: 66.5, cat_col: .C4, id_etape: 13, pays: .France),
        Col(nom_col: "Côte de Châtillon-le-Duc", nb_km: 1.4, pourcentage: 9.7, altitude: 422, situation_km: 90, cat_col: .C3, id_etape: 13, pays: .France),
        Col(nom_col: "Col de la Grande Côte", nb_km: 3.1, pourcentage: 6.5, altitude: 465, situation_km: 108, cat_col: .C3, id_etape: 13, pays: .France),
        Col(nom_col: "Côte du Bois de la Côte Blanchard", nb_km: 2, pourcentage: 7.6, altitude: 442, situation_km: 114.5, cat_col: .C3, id_etape: 13, pays: .France),
        Col(nom_col: "Côte des Fours-à-Chaux", nb_km: 1.1, pourcentage: 8.4, altitude: 348, situation_km: 128.5, cat_col: .C4, id_etape: 13, pays: .France),
        Col(nom_col: "Côte du Belvédère de Montfaucon", nb_km: 3.3, pourcentage: 9.4, altitude: 563, situation_km: 138.5, cat_col: .C2, id_etape: 13, pays: .France),
        Col(nom_col: "Mur des Trois-Châtels", nb_km: 0.4, pourcentage: 12.5, altitude: 314, situation_km: 146.5, cat_col: .NR, id_etape: 13, pays: .France),
        Col(nom_col: "Côte de Velotte", nb_km: 0.6, pourcentage: 6.5, altitude: 279, situation_km: 150, cat_col: .NR, id_etape: 13, pays: .France),

        Col(nom_col: "Côte de Montaigu", nb_km: 3, pourcentage: 6.7, altitude: 475, situation_km: 94.5, cat_col: .C3, id_etape: 14, pays: .France),
        Col(nom_col: "Côte de Coyron", nb_km: 1.5, pourcentage: 6.5, altitude: 516, situation_km: 118, cat_col: .C4, id_etape: 14, pays: .France),
        Col(nom_col: "Côte de Long Champ", nb_km: 4.3, pourcentage: 4.7, altitude: 531, situation_km: 148.5, cat_col: .C3, id_etape: 14, pays: .France),

        Col(nom_col: "Côte du Crêt d'Eau", nb_km: 4.8, pourcentage: 8, altitude: 762, situation_km: 21.5, cat_col: .C2, id_etape: 15, pays: .France),
        Col(nom_col: "Col de la Faucille", nb_km: 10.2, pourcentage: 6.5, altitude: 1320, situation_km: 70.5, cat_col: .C1, id_etape: 15, pays: .France),
        Col(nom_col: "Côte du Mont Fier", nb_km: 8.2, pourcentage: 5.7, altitude: 1275, situation_km: 107.5, cat_col: .C2, id_etape: 15, pays: .France),
        Col(nom_col: "Montée de la Combe de Laisia Les Molunes", nb_km: 11.8, pourcentage: 6.5, altitude: 1202, situation_km: 143, cat_col: .C1, id_etape: 15, pays: .France),

        Col(nom_col: "Côte de Chaux-Neuve", nb_km: 2.1, pourcentage: 5, altitude: 1019, situation_km: 17.5, cat_col: .C4, id_etape: 16, pays: .France),
        Col(nom_col: "Côte de Maison Neuve", nb_km: 2.4, pourcentage: 5.6, altitude: 992, situation_km: 38, cat_col: .C4, id_etape: 16, pays: .France),
        Col(nom_col: "Côte du Fort Saint-Antoine", nb_km: 1.8, pourcentage: 5.8, altitude: 1061, situation_km: 47, cat_col: .C4, id_etape: 16, pays: .France),

        Col(nom_col: "Montée de Champex-Lac", nb_km: 10.3, pourcentage: 8.4, altitude: 1496, situation_km: 61, cat_col: .C1, id_etape: 17, pays: .Suisse),
        Col(nom_col: "Col des Planches", nb_km: 8, pourcentage: 8.6, altitude: 1409, situation_km: 86, cat_col: .C1, id_etape: 17, pays: .Suisse),
        Col(nom_col: "Col du Lein", nb_km: 13.6, pourcentage: 8.8, altitude: 1681, situation_km: 122.5, cat_col: .HC, id_etape: 17, pays: .Suisse),
        Col(nom_col: "VERBIER - CROIX DE COEUR", nb_km: 15.4, pourcentage: 8.7, altitude: 2173, situation_km: 153, cat_col: .HC, id_etape: 17, pays: .Suisse),
        
        Col(nom_col: "Col des Aravis", nb_km: 6.7, pourcentage: 6.9, altitude: 1487, situation_km: 18.5, cat_col: .C1, id_etape: 18, pays: .France),
        Col(nom_col: "Montée du Plateau des Glières", nb_km: 6, pourcentage: 11.2, altitude: 1390, situation_km: 47.5, cat_col: .HC, id_etape: 18, pays: .France),
        Col(nom_col: "Col des Fleuries", nb_km: 5.6, pourcentage: 4.5, altitude: 930, situation_km: 68, cat_col: .NR, id_etape: 18, pays: .France),
        Col(nom_col: "PLATEAU DE SOLAISON", nb_km: 11.3, pourcentage: 9.2, altitude: 1508, situation_km: 100.5, cat_col: .HC, id_etape: 18, pays: .France),

        Col(nom_col: "Côte du Pas du Pont", nb_km: 1.4, pourcentage: 4.4, altitude: 346, situation_km: 97.5, cat_col: .C4, id_etape: 19, pays: .France),
        Col(nom_col: "Col de Boutière", nb_km: 5.9, pourcentage: 5, altitude: 664, situation_km: 138.5, cat_col: .C3, id_etape: 19, pays: .France),
        Col(nom_col: "Col du Serre", nb_km: 1.9, pourcentage: 4.9, altitude: 512, situation_km: 151.5, cat_col: .C4, id_etape: 19, pays: .France),
        
        Col(nom_col: "Col de Braus", nb_km: 10, pourcentage: 6.6, altitude: 1002, situation_km: 24.5, cat_col: .C1, id_etape: 20, pays: .France),
        Col(nom_col: "Col de Turini", nb_km: 20.7, pourcentage: 5.7, altitude: 1607, situation_km: 59.5, cat_col: .C1, id_etape: 20, pays: .France),
        Col(nom_col: "Col de la Colmiane", nb_km: 7.5, pourcentage: 7.1, altitude: 1500, situation_km: 95.5, cat_col: .C1, id_etape: 20, pays: .France),
        Col(nom_col: "COL DE LA COUILLOLE", nb_km: 15.7, pourcentage: 7.1, altitude: 1678, situation_km: 132, cat_col: .C1, id_etape: 20, pays: .France),

        Col(nom_col: "Côte de La Turbie", nb_km: 8.1, pourcentage: 5.6, altitude: 480, situation_km: 12, cat_col: .C2, id_etape: 21, pays: .France),
        Col(nom_col: "Col d'Èze", nb_km: 1.6, pourcentage: 8.1, altitude: 508, situation_km: 22.5, cat_col: .NR, id_etape: 21, pays: .France)
    ]
}
