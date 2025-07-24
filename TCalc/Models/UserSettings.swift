import SwiftUI
import SwiftData

@Model
final class UserSettings {
  init() {
    colorSettings = .init()
  }


  // VARIABLES
  var colorSettings: ColorSettings

}

