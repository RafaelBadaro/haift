//
//  haiftApp.swift
//  haift
//
//  Created by Rafael Badaró on 02/01/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct haiftApp: App {
    @StateObject var viewModel = AuthViewModel()
    
// Another way of configuring Firebase, the current 'active' code is the one officially on the firebase website
//    init(){
//        FirebaseApp.configure()
//    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
