import SwiftData
import SwiftUI

struct iOSScene: Scene {
  var body: some Scene {
    WindowGroup {
      TabView {
        CalcView()
          .tabItem {
            Label("Calculator", systemImage: "command")
          }

        SettingsView()
          .tabItem {
            Label("Settings", systemImage: "gear")
          }

      }

    }
    .modelContainer(for: UserSettings.self)

  }

}

