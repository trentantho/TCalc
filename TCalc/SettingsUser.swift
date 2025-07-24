import SwiftUI
import SwiftData

@Model
final class SettingsUser {
  init() {
    settingsColor = .init()
  }


  // VARIABLES
  private var settingsColor: SettingsColor

}

