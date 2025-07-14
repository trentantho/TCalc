import SwiftUI

struct MyScene: Scene {
  var body: some Scene {
    WindowGroup {
      TabView {
        ContentView()
          .tabItem {
            Label("Calculator", systemImage: "command")
          }
      }
    }
  }
}
