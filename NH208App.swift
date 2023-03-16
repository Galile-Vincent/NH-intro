//
//  NH208App.swift
//  NH208
//
//  Created by Vincent Chiang on 2023/1/5.
//

import SwiftUI

@main
struct NH208App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            DevTechieCustomTabbar()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            // iPhone only supports portrait orientation
            return .portrait
        } else {
            // iPad only supports landscape orientation
            return .portrait
        }
    }
}
