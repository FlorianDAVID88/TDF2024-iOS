//
//  HomeView.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("firenze2")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(spacing: 74) {
                Text("Road to Firenze in 2024 !")
                    .modifier(TDFTitleStyle())
                    .foregroundColor(.black)
                
                Text("#TDF2024")
                    .font(Font.custom("Galibier-Bold", size: 24))
                    .foregroundColor(.black)
                    .background(.yellow)
                    .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
