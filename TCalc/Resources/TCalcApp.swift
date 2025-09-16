import SwiftUI
import SwiftData

@main
struct TCalcApp: App {
  var body: some Scene {
    WindowGroup {
      TabView {
        Tab("Calc", systemImage: "command") {
          CalcView()
            .frame(minWidth: 300.0, minHeight: 400.0)
        }

        Tab("Settings", systemImage: "gear") {
          SettingsView()
            .frame(minWidth: 300.0, minHeight: 400.0)
        }
      }
      .tabViewStyle(.sidebarAdaptable)

    }
    .modelContainer(for: Settings.self)

  }
}
