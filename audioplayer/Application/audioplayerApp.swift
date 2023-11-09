//
//  audioplayerApp.swift
//  audioplayer

import SwiftUI

@main
struct audioplayerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
