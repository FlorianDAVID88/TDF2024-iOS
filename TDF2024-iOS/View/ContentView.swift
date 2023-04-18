//
//  ContentView.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "homekit")
                            Text("Accueil").textCase(.uppercase)
                        }
                    
                    CarteView()
                        .tabItem {
                            Image("fr_sfsymbol")
                                .renderingMode(.template)
                                .foregroundColor(.accentColor)
                            
                            Text("Carte").textCase(.uppercase)
                        }
                        .toolbar {
                            
                        }
                    
                    AllTeamsView()
                        .tabItem {
                            Image("jersey_symbol")
                                .renderingMode(.template)
                                .foregroundColor(.accentColor)
                            
                            Text("Équipes").textCase(.uppercase)
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
    
    init() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.init(name: "Galibier-Bold", size: 15)! ], for: .normal)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TDFViewModel(villeViewModel: VilleViewModel(), equipeViewModel: EquipeViewModel()))
            //.environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
