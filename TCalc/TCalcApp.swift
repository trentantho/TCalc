import SwiftUI

@main
struct TCalcApp: App {
  var body: some Scene {
#if os(iOS)
    MyScene()
#elseif os(macOS)
    //      MySceneAlt()
#endif
  }
}
