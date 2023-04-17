//
//  ColView.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import SwiftUI

struct ColView: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
                    DisclosureGroup(
                        isExpanded: $isExpanded,
                        content: {
                            Text("Contenu de la section")
                                .padding()
                        },
                        label: {
                            Text("Titre de la section")
                                .modifier(TDFTitle2Style())
                        }
                    )
                }
                .padding()
    }
}

struct ColView_Previews: PreviewProvider {
    static var previews: some View {
        ColView()
    }
}
