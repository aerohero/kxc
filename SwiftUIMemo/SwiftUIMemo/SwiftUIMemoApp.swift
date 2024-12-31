//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by Sean on 11/9/24.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
