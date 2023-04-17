//
//  TDF2024_iOSApp.swift
//  TDF2024-iOS
//
//  Created by user234243 on 4/4/23.
//

import SwiftUI

@main
struct TDF2024_iOSApp: App {
    //let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TDFViewModel(villeViewModel: VilleViewModel()))
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
