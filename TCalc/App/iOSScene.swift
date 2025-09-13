import SwiftData
import SwiftUI


struct iOSScene: Scene {
  @StateObject var globalSettings = Settings()
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

    }
  }
}

