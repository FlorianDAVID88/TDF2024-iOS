//
//  AllTeamsView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/17/23.
//

import SwiftUI

struct AllTeamsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Équipes")
                    .modifier(TDFTitleStyle())
                VStack {
                    ForEach(Equipe.allCases, id: \.self.id_equipe) { team in
                        Button {
                        } label: {
                            NavigationLink(destination: TeamView()) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.secondary)
                                    HStack {
                                        Image("UAE Team Emirates")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 70)
                                        
                                        Text("\(team.nom_equipe)")
                                            .font(Font.custom("Galibier-bold", size: 24))
                                            .textCase(.uppercase)
                                        
                                        Image("\(team.pays.rawValue)")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 25)
                                    }
                                    .alignmentGuide(.leading) { d in d[.leading] }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct AllTeamsView_Previews: PreviewProvider {
    static var previews: some View {
        AllTeamsView()
    }
}
