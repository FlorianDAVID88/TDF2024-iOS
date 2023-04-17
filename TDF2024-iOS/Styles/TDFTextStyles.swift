//
//  TDFTextStyleView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/5/23.
//

import SwiftUI

struct TDFTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(Font.custom("Galibier-Bold", size: 36))
            .background {
                Rectangle()
                    .foregroundColor(.yellow.opacity(0.4))
                    .frame(height: 15)
            }
    }
}

struct TDFTitle2Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(Font.custom("Galibier-Bold", size: 28))
            .background {
                Rectangle()
                    .foregroundColor(.yellow.opacity(0.4))
                    .frame(height: 15)
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct TDFTextStylesView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            Text("Hello, World !")
                .modifier(TDFTitleStyle())
            Text("Hello, World !")
                    .modifier(TDFTitle2Style())
        }
    }
}
