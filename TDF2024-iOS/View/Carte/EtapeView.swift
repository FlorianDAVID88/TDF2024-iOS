//
//  EtapeView.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import SwiftUI

struct EtapeView: View {
    @State var etape: Stage
    @State var villes: [Ville] {
        didSet {
            precondition(villes.count != 2, "Besoin d'une ville départ et d'une ville arrivée")
        }
    }
    
    var body: some View {
        VStack {
            let index = Int(etape.longueur * 10.0)%10
            let long = index == 0 ? "\(Int(etape.longueur)) km" : "\(String(format: "%.1f", etape.longueur)) km"
            Text("\(etape.libelle_etape)")
                .modifier(TDFTitleStyle())
            
            Text("\(villes[0].nom_ville) > \(villes[1].nom_ville) (\(long))")
                .font(Font.custom("Galibier-Bold", size: 24))
                .textCase(.uppercase)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 10) {
                Image(etape.type_etape.rawValue)
                    .renderingMode(.template)
                    .resizable()
                    //.foregroundColor(.blue)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                
                Text("\(etape.type_etape.rawValue)")
                    .font(Font.custom("Galibier-Regular", size: 18))
            }
        }.padding()
    }
}

struct EtapeView_Previews: PreviewProvider {
    static var previews: some View {
        let n = Int(arc4random_uniform(UInt32(21)))
        EtapeView(etape: Stage.allCases[n], villes: [Ville.allCases[2*n], Ville.allCases[2*n + 1]])
    }
}
