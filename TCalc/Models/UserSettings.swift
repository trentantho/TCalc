import SwiftUI
import SwiftData


@Model final class UserSettings: ObservableObject {
  init(selectedColor: String = "blue") {
    self.selectedColor = selectedColor
    self.createdDate = Date()
  }

  var selectedColor: String
  var createdDate: Date
  var colorValue: Color {
    switch selectedColor {
    case "red": return .red
    case "green": return .green
    case "blue": return .blue
    default: return .purple
    }
  }

}
