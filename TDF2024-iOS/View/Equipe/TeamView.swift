//
//  TeamView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/17/23.
//

import SwiftUI

struct TeamView: View {
    @State var team: Equipe
    
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                Text("\(team.nom_equipe)")
                    .modifier(TDFTitleStyle())
                
                Text("\(team.pays.rawValue)")
                    .font(Font.custom("Galibier-Bold", size: 24))
                    .textCase(.uppercase)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Image("\(team.abrev_equipe)")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                    
                    Image("\(team.nom_equipe)")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                }
                
                ListCoureursFromTeamView(team: team)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("Logo")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(team: Equipe.allCases[0])
            .environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
    }
}
