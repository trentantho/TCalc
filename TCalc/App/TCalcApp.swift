import SwiftUI


@main
struct TCalcApp: App {
  @EnvironmentObject var globalSettings: Settings
  
  var body: some Scene {
#if os(iOS)
    iOSScene()
#elseif os(macOS)
//    macScene()
#endif
  }
}
