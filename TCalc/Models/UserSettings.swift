import SwiftUI
import SwiftData


@Model final class Settings: ObservableObject {
  var selectedColor: String

  init(selectedColor: String = "blue") {
    self.selectedColor = selectedColor
  }
}
