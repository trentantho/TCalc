import SwiftUI
import SwiftData


final class Settings: ObservableObject {
  init() {
    colorSettings = .init()
  }


  // VARIABLES
  @Published var colorSettings: ColorSettings

}

