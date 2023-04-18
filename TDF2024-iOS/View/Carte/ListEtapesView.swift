//
//  ListEtapesView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/6/23.
//

import SwiftUI

struct ListEtapesView: View {
    @EnvironmentObject var viewModel: TDFViewModel
    
    var body: some View {
        VStack {
            ForEach(0..<viewModel.etapes.count, id: \.self) { e in
                let etape = viewModel.etapes[e]
                let depart = viewModel.villeViewModel.villesDepart[e]
                let arrivee = viewModel.villeViewModel.villesArrivee[e]
                
                NavigationLink(destination: EtapeView(etape: etape, villes: [depart, arrivee])) {
                    HStack(spacing: 15) {
                        Text("\(e + 1)")
                            .frame(width: 30)
                        
                        Image("\(etape.type_etape.rawValue)")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                        
                        let index = Int(etape.longueur * 10.0)%10
                        Text(index == 0 ? "\(Int(etape.longueur)) KM" : "\(String(format: "%.1f", etape.longueur)) KM")
                            .textCase(.uppercase)
                            .frame(width: 70)
                            .multilineTextAlignment(.center)
                            .font(Font.custom("Galibier-Regular", size: 20))
                        
                        Text("\(depart.nom_ville) > \(arrivee.nom_ville)")
                            .textCase(.uppercase)
                            .frame(width: 180)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .font(Font.custom("Galibier-Bold", size: 20))
                    .background(.yellow)
                }
                
            }
        }
        .foregroundColor(.black)
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

struct ListEtapesView_Previews: PreviewProvider {
    static var previews: some View {
        ListEtapesView().environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
        
    }
}
