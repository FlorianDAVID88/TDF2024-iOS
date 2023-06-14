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

struct TestingView: View {
    @State private var selectedOption = 0
    let options = ["France", "Englan"]
    
    var body: some View {
        Picker(selection: $selectedOption, label: Text("Select an option")) {
            /*HStack {
                Image(systemName: "cloud.fill")
                    .imageScale(.large)
                Text("French")
            }
            .tag(index)
            HStack {
                Image(systemName: "cloud.fill")
                    .imageScale(.large)
                Text("French")
            }
            .tag(index)*/
        }
        .pickerStyle(MenuPickerStyle())
    }
}

struct DisclosureView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureView(title: "text", content: Text("fghj"))
            .environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
        TestingView()
    }
}
