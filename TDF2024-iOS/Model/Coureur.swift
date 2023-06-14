//
//  Coureur.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/18/23.
//

import Foundation

struct Coureur {
    var id_coureur: Int
    var prenom_coureur: String
    var nom_coureur: String
    var date_naissance: String
    var titulaire: Bool
    var pays: Pays
    var equipe: Equipe
    
    init(id_coureur: Int, prenom_coureur: String, nom_coureur: String, date_naissance: String, pays: Pays) {
        self.id_coureur = id_coureur
        self.prenom_coureur = prenom_coureur
        self.nom_coureur = nom_coureur
        self.date_naissance = date_naissance
        self.titulaire = !(id_coureur%10 == 0 || id_coureur%10 == 9)
        self.pays = pays
        self.equipe = Equipe.allCases[(id_coureur - 1)/10]
    }
    
    static var allCases = [
        Coureur(id_coureur: 1, prenom_coureur: "Jonas", nom_coureur: "Vingegaard", date_naissance: "12/10/1996", pays: .Danemark),
        Coureur(id_coureur: 2, prenom_coureur: "Tiesj", nom_coureur: "Benoot", date_naissance: "11/03/1994", pays: .Belgique),
        Coureur(id_coureur: 3, prenom_coureur: "Steven", nom_coureur: "Kruijswijk", date_naissance: "07/06/1987", pays: .PB),
        Coureur(id_coureur: 4, prenom_coureur: "Sepp", nom_coureur: "Kuss", date_naissance: "13/09/1994", pays: .USA),
        Coureur(id_coureur: 5, prenom_coureur: "Christophe", nom_coureur: "Laporte", date_naissance: "11/12/1992", pays: .France),
        Coureur(id_coureur: 6, prenom_coureur: "Attila", nom_coureur: "Valter", date_naissance: "12/06/1998", pays: .Hongrie),
        Coureur(id_coureur: 7, prenom_coureur: "Wout", nom_coureur: "Van Aert", date_naissance: "15/09/1994", pays: .Belgique),
        Coureur(id_coureur: 8, prenom_coureur: "Dylan", nom_coureur: "Van Baarle", date_naissance: "21/05/1992", pays: .PB),
        Coureur(id_coureur: 9, prenom_coureur: "Jan", nom_coureur: "Tratnik", date_naissance: "23/02/1990", pays: .Slovénie),
        Coureur(id_coureur: 10, prenom_coureur: "Nathan", nom_coureur: "Van Hooydonck", date_naissance: "12/10/1995", pays: .Belgique),
        
        Coureur(id_coureur: 11, prenom_coureur: "Tadej", nom_coureur: "Pogačar", date_naissance: "21/09/1998", pays: .Slovénie),
        Coureur(id_coureur: 12, prenom_coureur: "João", nom_coureur: "Almeida", date_naissance: "05/08/1998", pays: .Portugal),
        Coureur(id_coureur: 13, prenom_coureur: "George", nom_coureur: "Bennett", date_naissance: "07/04/1990", pays: .NZL),
        Coureur(id_coureur: 14, prenom_coureur: "Mikkel", nom_coureur: "Bjerg", date_naissance: "03/11/1998", pays: .Danemark),
        Coureur(id_coureur: 15, prenom_coureur: "Felix", nom_coureur: "Grosschartner", date_naissance: "23/12/1993", pays: .Autriche),
        Coureur(id_coureur: 16, prenom_coureur: "Rafal", nom_coureur: "Majka", date_naissance: "12/09/1989", pays: .Pologne),
        Coureur(id_coureur: 17, prenom_coureur: "Brandon", nom_coureur: "McNulty", date_naissance: "02/04/1998", pays: .USA),
        Coureur(id_coureur: 18, prenom_coureur: "Tim", nom_coureur: "Wellens", date_naissance: "10/05/1991", pays: .Belgique),
        Coureur(id_coureur: 19, prenom_coureur: "Matteo", nom_coureur: "Trentin", date_naissance: "02/08/1989", pays: .Italie),
        Coureur(id_coureur: 20, prenom_coureur: "Jay", nom_coureur: "Vine", date_naissance: "16/11/1995", pays: .GB),

        Coureur(id_coureur: 21, prenom_coureur: "Geraint", nom_coureur: "Thomas", date_naissance: "25/05/1986", pays: .GB),
        Coureur(id_coureur: 22, prenom_coureur: "Thymen", nom_coureur: "Arensman", date_naissance: "04/12/1999", pays: .PB),
        Coureur(id_coureur: 23, prenom_coureur: "Filippo", nom_coureur: "Ganna", date_naissance: "25/07/1996", pays: .Italie),
        Coureur(id_coureur: 24, prenom_coureur: "Michal", nom_coureur: "Kwiatkowski", date_naissance: "02/06/1990", pays: .Pologne),
        Coureur(id_coureur: 25, prenom_coureur: "Tom", nom_coureur: "Pidcock", date_naissance: "30/07/1999", pays: .GB),
        Coureur(id_coureur: 26, prenom_coureur: "Carlos", nom_coureur: "Rodríguez", date_naissance: "02/02/2001", pays: .Espagne),
        Coureur(id_coureur: 27, prenom_coureur: "Luke", nom_coureur: "Rowe", date_naissance: "10/03/1990", pays: .GB),
        Coureur(id_coureur: 28, prenom_coureur: "Pavel", nom_coureur: "Sivakov", date_naissance: "11/07/1997", pays: .France),
        Coureur(id_coureur: 29, prenom_coureur: "Omar", nom_coureur: "Fraile", date_naissance: "17/07/1990", pays: .Espagne),
        Coureur(id_coureur: 30, prenom_coureur: "Magnus", nom_coureur: "Sheffield", date_naissance: "19/04/2002", pays: .USA),

        Coureur(id_coureur: 31, prenom_coureur: "David", nom_coureur: "Gaudu", date_naissance: "10/10/1996", pays: .France),
        Coureur(id_coureur: 32, prenom_coureur: "Bruno", nom_coureur: "Armirail", date_naissance: "11/04/1994", pays: .France),
        Coureur(id_coureur: 33, prenom_coureur: "Kevin", nom_coureur: "Geniets", date_naissance: "09/01/1997", pays: .Luxembourg),
        Coureur(id_coureur: 34, prenom_coureur: "Stefan", nom_coureur: "Küng", date_naissance: "16/11/1993", pays: .Suisse),
        Coureur(id_coureur: 35, prenom_coureur: "Valentin", nom_coureur: "Madouas", date_naissance: "12/07/1996", pays: .France),
        Coureur(id_coureur: 36, prenom_coureur: "Rudy", nom_coureur: "Molard", date_naissance: "17/09/1989", pays: .France),
        Coureur(id_coureur: 37, prenom_coureur: "Thibaut", nom_coureur: "Pinot", date_naissance: "29/05/1990", pays: .France),
        Coureur(id_coureur: 38, prenom_coureur: "Michael", nom_coureur: "Storer", date_naissance: "28/02/1997", pays: .Australie),
        Coureur(id_coureur: 39, prenom_coureur: "Romain", nom_coureur: "Grégoire", date_naissance: "21/01/2003", pays: .France),
        Coureur(id_coureur: 40, prenom_coureur: "Quentin", nom_coureur: "Pacher", date_naissance: "06/01/1992", pays: .France),

        Coureur(id_coureur: 41, prenom_coureur: "Enric", nom_coureur: "Mas", date_naissance: "07/01/1995", pays: .Espagne),
        Coureur(id_coureur: 42, prenom_coureur: "Rubén", nom_coureur: "Almeida Guerreiro", date_naissance: "06/07/1994", pays: .Portugal),
        Coureur(id_coureur: 43, prenom_coureur: "Imanol", nom_coureur: "Erviti", date_naissance: "15/11/1983", pays: .Espagne),
        Coureur(id_coureur: 44, prenom_coureur: "Iván", nom_coureur: "García Cortina", date_naissance: "20/11/1995", pays: .Espagne),
        Coureur(id_coureur: 45, prenom_coureur: "Gorka", nom_coureur: "Izaguirre", date_naissance: "07/10/1987", pays: .Espagne),
        Coureur(id_coureur: 46, prenom_coureur: "Matteo", nom_coureur: "Jorgenson", date_naissance: "01/07/1999", pays: .USA),
        Coureur(id_coureur: 47, prenom_coureur: "Gregor", nom_coureur: "Mühlberger", date_naissance: "04/04/1994", pays: .Autriche),
        Coureur(id_coureur: 48, prenom_coureur: "Carlos", nom_coureur: "Verona", date_naissance: "04/11/1992", pays: .Espagne),
        Coureur(id_coureur: 49, prenom_coureur: "Johan", nom_coureur: "Jacobs", date_naissance: "01/03/1997", pays: .Suisse),
        Coureur(id_coureur: 50, prenom_coureur: "Max", nom_coureur: "Kanter", date_naissance: "22/10/1997", pays: .Allemagne),

        Coureur(id_coureur: 51, prenom_coureur: "Aleksandr", nom_coureur: "Vlasov", date_naissance: "23/04/1996", pays: .Russie),
        Coureur(id_coureur: 52, prenom_coureur: "Sergio", nom_coureur: "Higuita", date_naissance: "01/08/1997", pays: .Colombie),
        Coureur(id_coureur: 53, prenom_coureur: "Jai", nom_coureur: "Hindley", date_naissance: "05/05/1996", pays: .Australie),
        Coureur(id_coureur: 54, prenom_coureur: "Lennard", nom_coureur: "Kämna", date_naissance: "09/09/1996", pays: .Allemagne),
        Coureur(id_coureur: 55, prenom_coureur: "Patrick", nom_coureur: "Konrad", date_naissance: "13/10/1991", pays: .Autriche),
        Coureur(id_coureur: 56, prenom_coureur: "Nils", nom_coureur: "Politt", date_naissance: "06/03/1994", pays: .Allemagne),
        Coureur(id_coureur: 57, prenom_coureur: "Maximilian", nom_coureur: "Schachmann", date_naissance: "09/01/1994", pays: .Allemagne),
        Coureur(id_coureur: 58, prenom_coureur: "Ide", nom_coureur: "Schelling", date_naissance: "06/01/1998", pays: .PB),
        Coureur(id_coureur: 59, prenom_coureur: "Marco", nom_coureur: "Haller", date_naissance: "01/04/1991", pays: .Autriche),
        Coureur(id_coureur: 60, prenom_coureur: "Bob", nom_coureur: "Jungels", date_naissance: "22/09/1992", pays: .Luxembourg),

        Coureur(id_coureur: 61, prenom_coureur: "Romain", nom_coureur: "Bardet", date_naissance: "09/11/1990", pays: .France),
        Coureur(id_coureur: 62, prenom_coureur: "Marco", nom_coureur: "Brenner", date_naissance: "27/08/2002", pays: .Allemagne),
        Coureur(id_coureur: 63, prenom_coureur: "Romain", nom_coureur: "Combaud", date_naissance: "01/04/1991", pays: .France),
        Coureur(id_coureur: 64, prenom_coureur: "Alberto", nom_coureur: "Dainese", date_naissance: "25/03/1998", pays: .Italie),
        Coureur(id_coureur: 65, prenom_coureur: "John", nom_coureur: "Degenkolb", date_naissance: "07/01/1989", pays: .Allemagne),
        Coureur(id_coureur: 66, prenom_coureur: "Chris", nom_coureur: "Hamilton", date_naissance: "18/05/1995", pays: .Australie),
        Coureur(id_coureur: 67, prenom_coureur: "Andreas", nom_coureur: "Leknessund", date_naissance: "21/05/1999", pays: .Norvège),
        Coureur(id_coureur: 68, prenom_coureur: "Kevin", nom_coureur: "Vermaerke", date_naissance: "16/10/2000", pays: .USA),
        Coureur(id_coureur: 69, prenom_coureur: "Patrick", nom_coureur: "Bevin", date_naissance: "15/02/1991", pays: .NZL),
        Coureur(id_coureur: 70, prenom_coureur: "Nils", nom_coureur: "Eekhoff", date_naissance: "23/01/1998", pays: .PB),

        Coureur(id_coureur: 71, prenom_coureur: "Julian", nom_coureur: "Alaphilippe", date_naissance: "11/06/1992", pays: .France),
        Coureur(id_coureur: 72, prenom_coureur: "Kasper", nom_coureur: "Asgreen", date_naissance: "08/02/1995", pays: .Danemark),
        Coureur(id_coureur: 73, prenom_coureur: "Mattia", nom_coureur: "Cattaneo", date_naissance: "25/10/1990", pays: .Italie),
        Coureur(id_coureur: 74, prenom_coureur: "Rémi", nom_coureur: "Cavagna", date_naissance: "10/08/1995", pays: .France),
        Coureur(id_coureur: 75, prenom_coureur: "Remco", nom_coureur: "Evenepoel", date_naissance: "25/01/2000", pays: .Belgique),
        Coureur(id_coureur: 76, prenom_coureur: "Yves", nom_coureur: "Lampaert", date_naissance: "10/04/1991", pays: .Belgique),
        Coureur(id_coureur: 77, prenom_coureur: "Tim", nom_coureur: "Merlier", date_naissance: "30/10/1992", pays: .Belgique),
        Coureur(id_coureur: 78, prenom_coureur: "Florian", nom_coureur: "Sénéchal", date_naissance: "10/07/1993", pays: .France),
        Coureur(id_coureur: 79, prenom_coureur: "Mauro", nom_coureur: "Schmid", date_naissance: "04/12/1999", pays: .Suisse),
        Coureur(id_coureur: 80, prenom_coureur: "Ilan", nom_coureur: "Van Wilder", date_naissance: "14/05/2000", pays: .Belgique),

        Coureur(id_coureur: 81, prenom_coureur: "Guillaume", nom_coureur: "Martin", date_naissance: "09/06/1993", pays: .France),
        Coureur(id_coureur: 82, prenom_coureur: "Bryan", nom_coureur: "Coquard", date_naissance: "25/04/1992", pays: .France),
        Coureur(id_coureur: 83, prenom_coureur: "Simon", nom_coureur: "Geschke", date_naissance: "13/03/1986", pays: .Allemagne),
        Coureur(id_coureur: 84, prenom_coureur: "Ion", nom_coureur: "Izaguirre", date_naissance: "04/02/1989", pays: .Espagne),
        Coureur(id_coureur: 85, prenom_coureur: "Victor", nom_coureur: "Lafay", date_naissance: "17/01/1996", pays: .France),
        Coureur(id_coureur: 86, prenom_coureur: "Benjamin", nom_coureur: "Thomas", date_naissance: "12/09/1995", pays: .France),
        Coureur(id_coureur: 87, prenom_coureur: "Maximilian", nom_coureur: "Walscheid", date_naissance: "13/06/1993", pays: .Allemagne),
        Coureur(id_coureur: 88, prenom_coureur: "Axel", nom_coureur: "Zingle", date_naissance: "18/12/1998", pays: .France),
        Coureur(id_coureur: 89, prenom_coureur: "Jesús", nom_coureur: "Herrada", date_naissance: "26/07/1990", pays: .Espagne),
        Coureur(id_coureur: 90, prenom_coureur: "Anthony", nom_coureur: "Perez", date_naissance: "22/04/1991", pays: .France),
        
        Coureur(id_coureur: 91, prenom_coureur: "Mathieu", nom_coureur: "Van Der Poel", date_naissance: "19/01/1995", pays: .PB),
        Coureur(id_coureur: 92, prenom_coureur: "Silvan", nom_coureur: "Dillier", date_naissance: "03/08/1990", pays: .Suisse),
        Coureur(id_coureur: 93, prenom_coureur: "Quinten", nom_coureur: "Hermans", date_naissance: "29/07/1995", pays: .Belgique),
        Coureur(id_coureur: 94, prenom_coureur: "Søren", nom_coureur: "Kragh Andersen", date_naissance: "10/08/1994", pays: .Danemark),
        Coureur(id_coureur: 95, prenom_coureur: "Xandro", nom_coureur: "Meurisse", date_naissance: "31/01/1992", pays: .Belgique),
        Coureur(id_coureur: 96, prenom_coureur: "Jasper", nom_coureur: "Philipsen", date_naissance: "02/03/1998", pays: .Belgique),
        Coureur(id_coureur: 97, prenom_coureur: "Robert", nom_coureur: "Stannard", date_naissance: "16/09/1998", pays: .Australie),
        Coureur(id_coureur: 98, prenom_coureur: "Gianni", nom_coureur: "Vermeersch", date_naissance: "19/11/1992", pays: .Belgique),
        Coureur(id_coureur: 99, prenom_coureur: "Dries", nom_coureur: "De Bondt", date_naissance: "04/07/1991", pays: .Belgique),
        Coureur(id_coureur: 100, prenom_coureur: "Stefano", nom_coureur: "Oldani", date_naissance: "10/01/1998", pays: .Italie),

        Coureur(id_coureur: 101, prenom_coureur: "Ben", nom_coureur: "O'Connor", date_naissance: "25/11/1995", pays: .Australie),
        Coureur(id_coureur: 102, prenom_coureur: "Clément", nom_coureur: "Berthet", date_naissance: "02/08/1997", pays: .France),
        Coureur(id_coureur: 103, prenom_coureur: "Benoit", nom_coureur: "Cosnefroy", date_naissance: "17/10/1995", pays: .France),
        Coureur(id_coureur: 104, prenom_coureur: "Stan", nom_coureur: "Dewulf", date_naissance: "20/12/1997", pays: .Belgique),
        Coureur(id_coureur: 105, prenom_coureur: "Dorian", nom_coureur: "Godon", date_naissance: "25/05/1996", pays: .France),
        Coureur(id_coureur: 106, prenom_coureur: "Oliver", nom_coureur: "Naesen", date_naissance: "16/09/1990", pays: .Belgique),
        Coureur(id_coureur: 107, prenom_coureur: "Aurélien", nom_coureur: "Paret-Peintre", date_naissance: "27/02/1996", pays: .France),
        Coureur(id_coureur: 108, prenom_coureur: "Nans", nom_coureur: "Peters", date_naissance: "12/03/1994", pays: .France),
        Coureur(id_coureur: 109, prenom_coureur: "Mikaël", nom_coureur: "Chérel", date_naissance: "01/04/1992", pays: .France),
        Coureur(id_coureur: 110, prenom_coureur: "Felix", nom_coureur: "Gall", date_naissance: "27/02/1998", pays: .Autriche),

        Coureur(id_coureur: 111, prenom_coureur: "Warren", nom_coureur: "Barguil", date_naissance: "28/10/1991", pays: .France),
        Coureur(id_coureur: 112, prenom_coureur: "Maxime", nom_coureur: "Bouet", date_naissance: "03/11/1986", pays: .France),
        Coureur(id_coureur: 113, prenom_coureur: "Élie", nom_coureur: "Gesbert", date_naissance: "01/07/1995", pays: .France),
        Coureur(id_coureur: 114, prenom_coureur: "Simon", nom_coureur: "Guglielmi", date_naissance: "01/07/1997", pays: .France),
        Coureur(id_coureur: 115, prenom_coureur: "Hugo", nom_coureur: "Hofstetter", date_naissance: "13/02/1994", pays: .France),
        Coureur(id_coureur: 116, prenom_coureur: "Matis", nom_coureur: "Louvel", date_naissance: "19/07/1999", pays: .France),
        Coureur(id_coureur: 117, prenom_coureur: "Clément", nom_coureur: "Russo", date_naissance: "20/01/1995", pays: .France),
        Coureur(id_coureur: 118, prenom_coureur: "Kévin", nom_coureur: "Vauquelin", date_naissance: "26/04/2001", pays: .France),
        Coureur(id_coureur: 119, prenom_coureur: "Amaury", nom_coureur: "Capiot", date_naissance: "25/06/1993", pays: .Belgique),
        Coureur(id_coureur: 120, prenom_coureur: "Clément", nom_coureur: "Champoussin", date_naissance: "29/05/1998", pays: .France),

        Coureur(id_coureur: 121, prenom_coureur: "Biniam", nom_coureur: "Girmay", date_naissance: "02/04/2000", pays: .Érythrée),
        Coureur(id_coureur: 122, prenom_coureur: "Sven Erik", nom_coureur: "Bystrøm", date_naissance: "21/01/1992", pays: .Norvège),
        Coureur(id_coureur: 123, prenom_coureur: "Lilian", nom_coureur: "Calmejane", date_naissance: "06/12/1992", pays: .France),
        Coureur(id_coureur: 124, prenom_coureur: "Rui", nom_coureur: "Costa", date_naissance: "05/10/1986", pays: .Portugal),
        Coureur(id_coureur: 125, prenom_coureur: "Louis", nom_coureur: "Meintjes", date_naissance: "21/02/1992", pays: .AFS),
        Coureur(id_coureur: 126, prenom_coureur: "Hugo", nom_coureur: "Page", date_naissance: "24/07/2001", pays: .France),
        Coureur(id_coureur: 127, prenom_coureur: "Taco", nom_coureur: "Van Der Hoorn", date_naissance: "04/12/1993", pays: .PB),
        Coureur(id_coureur: 128, prenom_coureur: "Georg", nom_coureur: "Zimmermann", date_naissance: "11/10/1997", pays: .Allemagne),
        Coureur(id_coureur: 129, prenom_coureur: "Kobe", nom_coureur: "Goossens", date_naissance: "29/04/1996", pays: .Belgique),
        Coureur(id_coureur: 130, prenom_coureur: "Mike", nom_coureur: "Teunissen", date_naissance: "25/08/1992", pays: .PB),

        Coureur(id_coureur: 131, prenom_coureur: "Jack", nom_coureur: "Haig", date_naissance: "06/09/1993", pays: .Australie),
        Coureur(id_coureur: 132, prenom_coureur: "Santiago", nom_coureur: "Buitrago", date_naissance: "26/09/1999", pays: .Colombie),
        Coureur(id_coureur: 133, prenom_coureur: "Pello", nom_coureur: "Bilbao", date_naissance: "25/02/1990", pays: .Espagne),
        Coureur(id_coureur: 134, prenom_coureur: "Damiano", nom_coureur: "Caruso", date_naissance: "12/10/1987", pays: .Italie),
        Coureur(id_coureur: 135, prenom_coureur: "Gino", nom_coureur: "Mäder", date_naissance: "04/01/1997", pays: .Suisse),
        Coureur(id_coureur: 136, prenom_coureur: "Matej", nom_coureur: "Mohorič", date_naissance: "19/10/1994", pays: .Slovénie),
        Coureur(id_coureur: 137, prenom_coureur: "Wout", nom_coureur: "Poels", date_naissance: "01/10/1987", pays: .PB),
        Coureur(id_coureur: 138, prenom_coureur: "Fred", nom_coureur: "Wright", date_naissance: "13/06/1999", pays: .GB),
        Coureur(id_coureur: 139, prenom_coureur: "Jonathan", nom_coureur: "Milan", date_naissance: "01/10/2000", pays: .Italie),
        Coureur(id_coureur: 140, prenom_coureur: "Andrea", nom_coureur: "Pasqualon", date_naissance: "02/01/1988", pays: .Italie),

        Coureur(id_coureur: 141, prenom_coureur: "Rigoberto", nom_coureur: "Urán", date_naissance: "26/01/1987", pays: .Colombie),
        Coureur(id_coureur: 142, prenom_coureur: "Alberto", nom_coureur: "Bettiol", date_naissance: "29/10/1993", pays: .Italie),
        Coureur(id_coureur: 143, prenom_coureur: "Stefan", nom_coureur: "Bissegger", date_naissance: "13/09/1998", pays: .Suisse),
        Coureur(id_coureur: 144, prenom_coureur: "Richard", nom_coureur: "Carapaz", date_naissance: "29/05/1993", pays: .Équateur),
        Coureur(id_coureur: 145, prenom_coureur: "Magnus", nom_coureur: "Cort Nielsen", date_naissance: "16/01/1993", pays: .Danemark),
        Coureur(id_coureur: 146, prenom_coureur: "Mikkel", nom_coureur: "Honoré", date_naissance: "21/01/1997", pays: .Danemark),
        Coureur(id_coureur: 147, prenom_coureur: "Neilson", nom_coureur: "Powless", date_naissance: "03/09/1996", pays: .USA),
        Coureur(id_coureur: 148, prenom_coureur: "Jonas", nom_coureur: "Rutsch", date_naissance: "24/01/1998", pays: .Allemagne),
        Coureur(id_coureur: 149, prenom_coureur: "Jhoan Esteban", nom_coureur: "Chaves Rubio", date_naissance: "17/01/1990", pays: .Colombie),
        Coureur(id_coureur: 150, prenom_coureur: "Ben", nom_coureur: "Healy", date_naissance: "11/09/2000", pays: .Irlande),
        
        Coureur(id_coureur: 151, prenom_coureur: "Peter", nom_coureur: "Sagan", date_naissance: "26/01/1990", pays: .Slovaquie),
        Coureur(id_coureur: 152, prenom_coureur: "Maciej", nom_coureur: "Bodnar", date_naissance: "07/03/1985", pays: .Pologne),
        Coureur(id_coureur: 153, prenom_coureur: "Matthieu", nom_coureur: "Burgaudeau", date_naissance: "17/11/1998", pays: .France),
        Coureur(id_coureur: 154, prenom_coureur: "Valentin", nom_coureur: "Ferron", date_naissance: "08/02/1998", pays: .France),
        Coureur(id_coureur: 155, prenom_coureur: "Pierre", nom_coureur: "Latour", date_naissance: "12/10/1993", pays: .France),
        Coureur(id_coureur: 156, prenom_coureur: "Daniel", nom_coureur: "Oss", date_naissance: "13/01/1987", pays: .Italie),
        Coureur(id_coureur: 157, prenom_coureur: "Anthony", nom_coureur: "Turgis", date_naissance: "16/05/1994", pays: .France),
        Coureur(id_coureur: 158, prenom_coureur: "Alexis", nom_coureur: "Vuillermoz", date_naissance: "01/06/1988", pays: .France),
        Coureur(id_coureur: 159, prenom_coureur: "Steff", nom_coureur: "Cras", date_naissance: "13/02/1996", pays: .Belgique),
        Coureur(id_coureur: 160, prenom_coureur: "Fabien", nom_coureur: "Doubey", date_naissance: "21/10/1993", pays: .France),

        Coureur(id_coureur: 161, prenom_coureur: "Mads", nom_coureur: "Pedersen", date_naissance: "18/12/1995", pays: .Danemark),
        Coureur(id_coureur: 162, prenom_coureur: "Julien", nom_coureur: "Bernard", date_naissance: "17/03/1992", pays: .France),
        Coureur(id_coureur: 163, prenom_coureur: "Kenny", nom_coureur: "Élissonde", date_naissance: "22/07/1991", pays: .France),
        Coureur(id_coureur: 164, prenom_coureur: "Juan Pedro", nom_coureur: "López", date_naissance: "31/07/1997", pays: .Espagne),
        Coureur(id_coureur: 165, prenom_coureur: "Bauke", nom_coureur: "Mollema", date_naissance: "26/11/1986", pays: .PB),
        Coureur(id_coureur: 166, prenom_coureur: "Quinn", nom_coureur: "Simmons", date_naissance: "08/05/2001", pays: .USA),
        Coureur(id_coureur: 167, prenom_coureur: "Mattias", nom_coureur: "Skjelmose Jensen", date_naissance: "26/09/2000", pays: .Danemark),
        Coureur(id_coureur: 168, prenom_coureur: "Jasper", nom_coureur: "Stuyven", date_naissance: "17/04/1992", pays: .Belgique),
        Coureur(id_coureur: 169, prenom_coureur: "Giulio", nom_coureur: "Ciccone", date_naissance: "20/12/1994", pays: .Italie),
        Coureur(id_coureur: 170, prenom_coureur: "Toms", nom_coureur: "Skujiņš", date_naissance: "15/06/1991", pays: .Lettonie),
        
        Coureur(id_coureur: 171, prenom_coureur: "Arnaud", nom_coureur: "De Lie", date_naissance: "16/03/2002", pays: .Belgique),
        Coureur(id_coureur: 172, prenom_coureur: "Thomas", nom_coureur: "De Gendt", date_naissance: "06/11/1986", pays: .Belgique),
        Coureur(id_coureur: 173, prenom_coureur: "Pascal", nom_coureur: "Eenkhoorn", date_naissance: "08/02/1997", pays: .PB),
        Coureur(id_coureur: 174, prenom_coureur: "Frederik", nom_coureur: "Frison", date_naissance: "28/07/1992", pays: .Belgique),
        Coureur(id_coureur: 175, prenom_coureur: "Jacopo", nom_coureur: "Guarnieri", date_naissance: "14/08/1987", pays: .Italie),
        Coureur(id_coureur: 176, prenom_coureur: "Andreas", nom_coureur: "Krøn", date_naissance: "01/06/1998", pays: .Danemark),
        Coureur(id_coureur: 177, prenom_coureur: "Brent", nom_coureur: "Van Moer", date_naissance: "12/01/1998", pays: .Belgique),
        Coureur(id_coureur: 178, prenom_coureur: "Florian", nom_coureur: "Vermeersch", date_naissance: "12/03/1999", pays: .Belgique),
        Coureur(id_coureur: 179, prenom_coureur: "Sylvain", nom_coureur: "Moniquet", date_naissance: "14/01/1998", pays: .Belgique),
        Coureur(id_coureur: 180, prenom_coureur: "Maxim", nom_coureur: "Van Gils", date_naissance: "25/11/1999", pays: .Belgique),
        
        Coureur(id_coureur: 181, prenom_coureur: "Alexey", nom_coureur: "Lutsenko", date_naissance: "07/09/1992", pays: .Kazakhstan),
        Coureur(id_coureur: 182, prenom_coureur: "Samuele", nom_coureur: "Battistella", date_naissance: "14/11/1998", pays: .Italie),
        Coureur(id_coureur: 183, prenom_coureur: "Cees", nom_coureur: "Bol", date_naissance: "27/07/1995", pays: .PB),
        Coureur(id_coureur: 184, prenom_coureur: "David", nom_coureur: "De La Cruz", date_naissance: "06/05/1989", pays: .Espagne),
        Coureur(id_coureur: 185, prenom_coureur: "Joe", nom_coureur: "Dombrowski", date_naissance: "12/05/1991", pays: .USA),
        Coureur(id_coureur: 186, prenom_coureur: "Yevgeniy", nom_coureur: "Fedorov", date_naissance: "16/02/2000", pays: .Kazakhstan),
        Coureur(id_coureur: 187, prenom_coureur: "Gianni", nom_coureur: "Moscon", date_naissance: "20/04/1994", pays: .Italie),
        Coureur(id_coureur: 188, prenom_coureur: "Luis León", nom_coureur: "Sánchez", date_naissance: "24/11/1983", pays: .Espagne),
        Coureur(id_coureur: 189, prenom_coureur: "Simone", nom_coureur: "Velasco", date_naissance: "02/12/1995", pays: .Italie),
        Coureur(id_coureur: 190, prenom_coureur: "Harold", nom_coureur: "Tejada", date_naissance: "27/04/1997", pays: .Colombie),
        
        Coureur(id_coureur: 191, prenom_coureur: "Michael", nom_coureur: "Matthews", date_naissance: "26/09/1990", pays: .Australie),
        Coureur(id_coureur: 192, prenom_coureur: "Lawson", nom_coureur: "Craddock", date_naissance: "20/02/1992", pays: .USA),
        Coureur(id_coureur: 193, prenom_coureur: "Luke", nom_coureur: "Durbridge", date_naissance: "09/04/1991", pays: .Australie),
        Coureur(id_coureur: 194, prenom_coureur: "Dylan", nom_coureur: "Gronewegen", date_naissance: "21/06/1993", pays: .PB),
        Coureur(id_coureur: 195, prenom_coureur: "Christopher", nom_coureur: "Juul Jensen", date_naissance: "06/07/1989", pays: .Danemark),
        Coureur(id_coureur: 196, prenom_coureur: "Lukas", nom_coureur: "Pöstlberger", date_naissance: "10/01/1992", pays: .Autriche),
        Coureur(id_coureur: 197, prenom_coureur: "Matteo", nom_coureur: "Sobrero", date_naissance: "14/05/1997", pays: .Italie),
        Coureur(id_coureur: 198, prenom_coureur: "Zdeněk", nom_coureur: "Štybar", date_naissance: "11/12/1985", pays: .RTC),
        Coureur(id_coureur: 199, prenom_coureur: "Alexandre", nom_coureur: "Balmer", date_naissance: "04/05/2000", pays: .Suisse),
        Coureur(id_coureur: 200, prenom_coureur: "Filippo", nom_coureur: "Zana", date_naissance: "18/03/1999", pays: .Italie),
        
        Coureur(id_coureur: 201, prenom_coureur: "Chris", nom_coureur: "Froome", date_naissance: "20/05/1985", pays: .GB),
        Coureur(id_coureur: 202, prenom_coureur: "Guillaume", nom_coureur: "Boivin", date_naissance: "25/05/1989", pays: .Canada),
        Coureur(id_coureur: 203, prenom_coureur: "Simon", nom_coureur: "Clarke", date_naissance: "18/07/1986", pays: .Australie),
        Coureur(id_coureur: 204, prenom_coureur: "Hugo", nom_coureur: "Houle", date_naissance: "27/09/1990", pays: .Canada),
        Coureur(id_coureur: 205, prenom_coureur: "Daryl", nom_coureur: "Impey", date_naissance: "06/12/1984", pays: .AFS),
        Coureur(id_coureur: 206, prenom_coureur: "Krists", nom_coureur: "Neilands", date_naissance: "18/08/1994", pays: .Lettonie),
        Coureur(id_coureur: 207, prenom_coureur: "Dylan", nom_coureur: "Teuns", date_naissance: "01/03/1992", pays: .Belgique),
        Coureur(id_coureur: 208, prenom_coureur: "Michael", nom_coureur: "Woods", date_naissance: "12/10/1986", pays: .Canada),
        Coureur(id_coureur: 209, prenom_coureur: "Tom", nom_coureur: "Van Asbroeck", date_naissance: "19/04/1990", pays: .Belgique),
        Coureur(id_coureur: 210, prenom_coureur: "Nick", nom_coureur: "Schultz", date_naissance: "13/09/1994", pays: .Australie),

        Coureur(id_coureur: 211, prenom_coureur: "Tobias", nom_coureur: "Johanssen", date_naissance: "23/08/1999", pays: .Norvège),
        Coureur(id_coureur: 212, prenom_coureur: "Niklas", nom_coureur: "Eg", date_naissance: "06/01/1995", pays: .Danemark),
        Coureur(id_coureur: 213, prenom_coureur: "Anders", nom_coureur: "Johanssen", date_naissance: "23/08/1999", pays: .Norvège),
        Coureur(id_coureur: 214, prenom_coureur: "Alexander", nom_coureur: "Kristoff", date_naissance: "05/07/1987", pays: .Norvège),
        Coureur(id_coureur: 215, prenom_coureur: "Anders", nom_coureur: "Skaarseth", date_naissance: "07/05/1995", pays: .Norvège),
        Coureur(id_coureur: 216, prenom_coureur: "Rasmus", nom_coureur: "Tiller", date_naissance: "28/07/1996", pays: .Norvège),
        Coureur(id_coureur: 217, prenom_coureur: "Torstein", nom_coureur: "Træen", date_naissance: "16/07/1995", pays: .Norvège),
        Coureur(id_coureur: 218, prenom_coureur: "Jonas Gregaard", nom_coureur: "Wilsly", date_naissance: "30/07/1996", pays: .Danemark),
        Coureur(id_coureur: 219, prenom_coureur: "Idar", nom_coureur: "Andersen", date_naissance: "30/04/1999", pays: .Norvège),
        Coureur(id_coureur: 220, prenom_coureur: "Frederik", nom_coureur: "Dvernes", date_naissance: "20/03/1997", pays: .Norvège),
    ]
    
    mutating func isU25() -> Bool {
        return Int(date_naissance.suffix(4))! > Calendar.current.component(.year, from: Date.now) - 25
    }
}
