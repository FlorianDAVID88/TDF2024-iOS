//
//  SliderBarView.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/29/23.
//

import SwiftUI

struct SliderBarColsView: View {
    @State var cols: [Col]
    @State var selectedTab = 0
    
    var body: some View {
        VStack {
            HStack {
                if selectedTab > 0 {
                    Button {
                        selectedTab -= 1
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                } else {
                    Spacer()
                }
                
                TabView(selection: $selectedTab) {
                    ForEach(Array(cols.indices), id: \.self) { c in
                        let col = cols[c]
                        ColView(col: col)
                            .tag(c)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                if selectedTab < cols.count - 1 {
                    Button {
                        selectedTab += 1
                    } label: {
                        Image(systemName: "chevron.right")
                    }
                } else {
                    Spacer()
                }
            }
            .padding()
            .foregroundColor(.accentColor)
            .background(.gray.opacity(0.5))
            .frame(maxHeight: 450)
            .frame(minHeight: 150)
        }
    }
}

extension String.StringInterpolation {
    mutating func appendInterpolation(km: Double) {
        if km < 1 {
            appendInterpolation("\(Int(km * 1000)) m")
        } else {
            appendInterpolation("\(km) km")
        }
    }
}

struct SliderBarColsView_Previews: PreviewProvider {
    static var previews: some View {
        SliderBarColsView(cols: Col.allCases)
    }
}
