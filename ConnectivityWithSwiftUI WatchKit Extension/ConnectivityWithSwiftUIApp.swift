//
//  ConnectivityWithSwiftUIApp.swift
//  ConnectivityWithSwiftUI WatchKit Extension
//
//  Created by Michele Manniello on 01/08/21.
//

import SwiftUI

@main
struct ConnectivityWithSwiftUIApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
