//
//  ColView.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import SwiftUI

struct ColView: View {
    @State var col: Col
    
    var body: some View {
        VStack {
            Text("\(col.nom_col)")
                .font(Font.custom("Galibier-bold", size: 20))
                .textCase(.uppercase)
            
            let km = col.nb_km < 1
            ? "\(Int((col.nb_km * 1000 as NSDecimalNumber).intValue)) m"
            : String(format: "%.1f km", Double((col.nb_km as NSDecimalNumber).doubleValue))
            
            let pourcentage = String(format: "%.1f", Double((col.pourcentage as NSDecimalNumber).doubleValue))
            VStack {
                Text("\(km) à \(pourcentage) %")
                Text("(\(col.cat_col.rawValue))")
            }
            .font(Font.custom("Galibier-regular", size: 18))
            
            if UIImage(named: col.nom_col) != nil {
                Image("\(col.nom_col)")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
            }
            
            Button {
            } label: {
                NavigationLink(destination: EmptyView()) {
                    Text("Détails".uppercased())
                        .font(Font.custom("Galibier-Bold", size: 18))
                        .padding(5)
                        .foregroundColor(.black)
                        .background(.yellow)
                }
            }
        }
        .padding()
        .foregroundColor(.accentColor)
    }
}

struct ColView_Previews: PreviewProvider {
    static var previews: some View {
        ColView(col: Col.allCases[55])
    }
}
