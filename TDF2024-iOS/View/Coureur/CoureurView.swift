//
//  CoureurView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/17/23.
//

import SwiftUI

struct CoureurView: View {
    @State var coureur: Coureur
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: 15) {
            Image("\(coureur.prenom_coureur) \(coureur.nom_coureur)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Text("\(coureur.prenom_coureur) \(coureur.nom_coureur)")
                    .modifier(TDFTitleStyle())
                
                HStack {
                    Image("\(coureur.pays.rawValue)")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15)
                    
                    Text("\(coureur.pays.rawValue)")
                        .font(Font.custom("Galibier-Bold", size: 24))
                        .textCase(.uppercase)
                        .multilineTextAlignment(.center)
                }
                
                Text("\(coureur.equipe.nom_equipe)")
                    .font(Font.custom("Galibier-Bold", size: 20))
                    .textCase(.uppercase)
                    .multilineTextAlignment(.center)
            }
            HStack(spacing: 20) {
                if coureur.titulaire {
                    VStack {
                        Text("Dossard").font(Font.custom("Galibier-Bold", size: 20)).textCase(.uppercase)
                        Text("N°\(coureur.id_coureur)").font(Font.custom("Galibier-Bold", size: 40))
                    }
                }
                Image("\(coureur.equipe.nom_equipe)")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
            }
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

struct CoureurView_Previews: PreviewProvider {
    static var previews: some View {
        CoureurView(coureur: Coureur.allCases[38])
    }
}
