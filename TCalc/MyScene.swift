import SwiftData
import SwiftUI

struct MyScene: Scene {
  var body: some Scene {
    WindowGroup {
      TabView {
        ContentView()
          .tabItem {
            Label("Calculator", systemImage: "command")
          }

        SettingsView()
          .tabItem {
            Label("Settings", systemImage: "gear")
          }
      }
      .modelContainer(for: UserSettings.self)

    }
  }
}

