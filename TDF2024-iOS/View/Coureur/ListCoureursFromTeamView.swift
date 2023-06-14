//
//  ListCoureursFromTeamView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/18/23.
//

import SwiftUI
import Localize_Swift

struct ListCoureursFromTeamView: View {
    @EnvironmentObject var viewModel: TDFViewModel
    @State var team: Equipe
    
    var body: some View {
        VStack {
            let coureurs = viewModel.equipeViewModel.getCoureursFromEquipe(equipe: team)
            ForEach(0..<coureurs.count/2, id: \.self) { cour in
                let hstack = HStack {
                    ForEach(cour*2...cour*2+1, id: \.self) { c in
                        var coureur = coureurs[c]
                        NavigationLink(destination: CoureurView(coureur: coureur)) {
                            ZStack(alignment: .topLeading) {
                                if(coureur.titulaire) {
                                    Text("\(coureur.id_coureur)")
                                        .font(Font.custom("Galibier-Bold", size: 16))
                                        .padding(5)
                                        .background(.black)
                                        .foregroundColor(.white)
                                        .padding(5)
                                }

                                VStack {
                                    Image("\(coureur.prenom_coureur) \(coureur.nom_coureur)")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                    
                                    Text("\(coureur.prenom_coureur) \(coureur.nom_coureur.uppercased())")
                                        .font(Font.custom("Galibier-bold", size: 20))
                                        .background(coureur.isU25() ? Color.white : Color.clear)
                                    
                                    Text("Né le \(coureur.date_naissance)")
                                        .font(Font.custom("Galibier-regular", size: 18))
                                }
                                .padding()
                                .frame(maxWidth: 200, maxHeight: 230)
                                .background(Color.gray.opacity(0.5))
                            }
                        }
                    }
                }
                if !(coureurs[cour*2].titulaire) {
                    DisclosureView(title: "Remplaçants", content: hstack)
                } else {
                    hstack.padding(.horizontal)
                }
            }
        }
    }
}

struct ListCoureursFromTeamView_Previews: PreviewProvider {
    static var previews: some View {
        ListCoureursFromTeamView(team: Equipe.allCases[5])
            .environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
    }
}
