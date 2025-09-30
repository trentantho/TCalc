// Created by Trent Morrison, 2025
// Simple calculator to explore SwiftUI, SwiftData, and Swift in general

import SwiftData
import SwiftUI

@main
struct TCalcApp: App {
  var body: some Scene {
    WindowGroup {
      TabView {
        Tab("", systemImage: "command") {
          CalcView()
            .frame(minWidth: 300.0, minHeight: 400.0)
        }

        Tab("", systemImage: "gear") {
          SettingsView()
            .frame(minWidth: 300.0, minHeight: 400.0)
        }
      }
      .tabViewStyle(.sidebarAdaptable)

    }
    .modelContainer(for: Settings.self)

  }
}
