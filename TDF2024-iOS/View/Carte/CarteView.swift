//
//  CarteView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/5/23.
//

import SwiftUI

struct CarteView: View {
    @EnvironmentObject var viewModel: TDFViewModel
    @State private var isTap: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Carte de l'édition 2024")
                    .modifier(TDFTitleStyle())
                
                Text("Distance totale : \(String(format: "%.1f", viewModel.getDistanceTotale())) km")
                    .font(Font.custom("Galibier-Regular", size: 20))
                
                VStack {
                    Image("Carte")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    DisclosureView(title: "Description", content:
                                    VStack {
                        Text("Le départ de la 111e édition du Tour de France sera donné de") + Text(" Florence, le samedi 29 juin 2024 : ce sera une première dans l’histoire de la Grande Boucle.").bold()
                        Text("Après trois étapes en Ialie, le Tour se poursuivra ensuite en quasi intégralité dans l’Hexagone avec 2 jours en Suisse en début de troisième semaine et 1 journée dans la principauté de Monaco. 8 Régions et 28 départements seront visités.\n")
                        Text("\(viewModel.etapes.count) composeront cette édition avec :\n- \(viewModel.getNbEtapesFromType(type: .Plaine)) étapes de plaine\n- \(viewModel.getNbEtapesFromType(type: .Accidentee)) étapes accidentées\n- \(viewModel.getNbEtapesFromType(type: .Montagne)) étapes de moyenne montagne et \(viewModel.getNbEtapesFromType(type: .HteMontagne)) de haute-montagne").bold()
                        
                        + Text(" avec 5 arrivées en altitude (Les Monts-d'Olmes, Station des Rousses, Verbier, Plateau de Solaison et Col de la Couillole)")
                        
                        + Text("\n- \(viewModel.getNbEtapesFromType(type: .ClmInd)) étapes contre la montre en individuel\n- \(viewModel.repos.count) journées de repos").bold()
                    }
                    )
                    
                    DisclosureView(title: "Étapes", content: ListEtapesView())
                    
                    DisclosureView(title: "Première fois", content:
                                    VStack {
                        Text("Sur un total de \(viewModel.getNbVillesDiff()), \(viewModel.getSitesEtapesInedits().count) nouveaux sites ou villes-étapes feront en 2023 leur apparition sur la carte du Tour : ")
                        ForEach(viewModel.getSitesEtapesInedits(), id: \.self.id_villeEtape) { inedit in
                            Text(" - \(inedit.name_ville)")
                        }
                    }
                    )
                    
                    DisclosureView(title: "Montagne", content:
                                    Text("Trois massifs de l’Hexagone seront visités : avec les Alpes (par deux fois), les Pyrénées et le Jura.\n\nDouze nouveautés : \n - Le col de Valico Tre Faggi, la côte de Spinello, la côte de Barbotto et la côte de San Luca (Appenins)\n - Le col de Beyrède (Pyrénées)\n - La côte des Garcins, le col des Moutas et le Plateau de Solaison (Alpes françaises)\n - La montée de Champex-Lac, le col des Planches, le Col du Lein et le col de la Croix de Coeur (Alpes suisses)\n\nCe dernier (2 173 m) sera le toit du Tour de France 2024.")
                    )
                    
                    DisclosureView(title: "Chronos", content:
                                    Text("Deux exercices en solitaire seront au programme de la 111e édition. Le premier autour de Tarbes, à l’occasion de la 8e étape sur une distance de 29,8 km et le second à l’occasion de l'ultime étape Monaco > Nice sur une distance de 35 km.")
                    )
                    
                    DisclosureView(title: "Bonifs et bonus", content:
                                    Text("Des bonifications seront distribuées à l’arrivée de chaque étape en ligne et attribueront respectivement 10, 6 et 4 secondes aux trois premiers coureurs classés. \nDes points bonus seront attribués au passage de cols ou sommets situés à des endroits stratégiques du parcours et créditeront respectivement de 8, 5 et 2 secondes (sous réserve d’homologation par l’Union cycliste internationale) les trois premiers coureurs classés. Ces points bonus n’auront aucune incidence sur le classement par points.")
                    )
                    
                    DisclosureView(title: "Dotations", content:
                                    Text("Au total, ")
                                   + Text("2,3 millions").bold()
                                   + Text(" d’euros seront attribués et mis en jeu pour les équipes et les coureurs dont ")
                                   + Text("500 000 €").bold()
                                   + Text(" au vainqueur du classement général individuel final.")
                    )
                }
            }
            .font(Font.custom("Galibier-Regular", size: 20))
        }
    }
}


struct CarteView_Previews: PreviewProvider {
    static var previews: some View {
        CarteView().environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
    }
}
