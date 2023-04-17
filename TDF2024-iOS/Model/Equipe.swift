//
//  Equipe.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/17/23.
//

import Foundation

struct Equipe {
    var id_equipe = UUID()
    var nom_equipe: String
    var abrev_equipe: String
    var pays: Pays
    
    static var allCases = [
        Equipe(nom_equipe: "Team Jumbo-Visma", abrev_equipe: "TJV", pays: .PB),
        Equipe(nom_equipe: "UAE Team Emirates", abrev_equipe: "UAD", pays: .UAE),
        Equipe(nom_equipe: "Ineos Grenadiers", abrev_equipe: "IGD", pays: .GB),
        Equipe(nom_equipe: "Groupama-FDJ", abrev_equipe: "GFC", pays: .France),
        Equipe(nom_equipe: "Movistar", abrev_equipe: "MOV", pays: .Espagne),
        Equipe(nom_equipe: "Bora-Hansgrohe", abrev_equipe: "BOH", pays: .Allemagne),
        Equipe(nom_equipe: "Team DSM", abrev_equipe: "DSM", pays: .PB),
        Equipe(nom_equipe: "Soudal Quick-Step", abrev_equipe: "SQS", pays: .Belgique),
        Equipe(nom_equipe: "Cofidis", abrev_equipe: "COF", pays: .France),
        Equipe(nom_equipe: "Alpecin-Deceuninck", abrev_equipe: "ADC", pays: .Belgique),
        Equipe(nom_equipe: "AG2R-Citroën Team", abrev_equipe: "ACT", pays: .France),
        Equipe(nom_equipe: "Team Arkéa-Samsic", abrev_equipe: "ARK", pays: .France),
        Equipe(nom_equipe: "Intermarché-Circus-Wanty", abrev_equipe: "ICW", pays: .Belgique),
        Equipe(nom_equipe: "Bahrain Victorious", abrev_equipe: "TBV", pays: .Bahrain),
        Equipe(nom_equipe: "EF Education Easy-Post", abrev_equipe: "EFE", pays: .USA),
        Equipe(nom_equipe: "Team Total Énergies", abrev_equipe: "TEN", pays: .France),
        Equipe(nom_equipe: "TTrek-Segafredo", abrev_equipe: "TFS", pays: .USA),
        Equipe(nom_equipe: "Lotto Dstny", abrev_equipe: "LTD", pays: .Belgique),
        Equipe(nom_equipe: "Astana Qazaqstan Team", abrev_equipe: "AST", pays: .Kazakhstan),
        Equipe(nom_equipe: "Team Jayco AlUla", abrev_equipe: "JAY", pays: .Australie),
        Equipe(nom_equipe: "Israël Premier Tech", abrev_equipe: "IPT", pays: .Israël),
        Equipe(nom_equipe: "Uno-X Pro Cycling Team", abrev_equipe: "UXT", pays: .Norvège)
    ]
}
