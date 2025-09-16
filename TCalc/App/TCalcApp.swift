import SwiftUI


@main
struct TCalcApp: App {  
  var body: some Scene {
#if os(iOS)
    iOSScene()
#elseif os(macOS)
//    macScene()
#endif
  }
}
