//
//  AppDelegate.swift
//  Tour de France 2024
//
//  Created by user234243 on 4/5/23.
//

import UIKit
import CoreData

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Initialisation de CoreData
        let container = NSPersistentContainer(name: "TDF2024_iOS")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Erreur non résolue \(error), \(error.userInfo)")
            }
        })
        
        return true
    }

}
