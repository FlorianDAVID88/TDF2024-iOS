//
//  DisclosurView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/6/23.
//

import SwiftUI

struct DisclosureView<Content: View>: View {
    @State var title: String
    @State private var isTap: Bool = false
    var content: Content
    
    var body: some View {
        DisclosureGroup(
            isExpanded: $isTap,
            content: {
                content
                    .frame(maxWidth: .infinity, alignment: .leading)
            },
            label: {
                Text(title)
                    .modifier(TDFTitle2Style())
                    
            }
        ).padding()
    }
}

struct DisclosureView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureView(title: "text", content: Text("fghj"))
            .environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
    }
}
