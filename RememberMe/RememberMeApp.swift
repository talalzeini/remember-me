//
//  RememberMeApp.swift
//  RememberMe
//
//  Created by Talal El Zeini on 10/20/24.
//

import SwiftUI

@main
struct RememberMeApp: App {
    init() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithTransparentBackground()
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }

    var body: some Scene {
        WindowGroup {
            QuoteView();
        }
    }
}
