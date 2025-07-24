import SwiftData
import SwiftUI

@Model
class SettingsColor {
  init () {
    self.colorSelected = "blue"
  }


  // VARIABLES
  private var colorSelected: String?

  @Transient
  private let colorOptions: [String:Color] = ["blue":Color.blue, "red":Color.red, "green":Color.green, "purple":Color.purple]


  // ACCESSORS
  public func getColor() -> Color {
    switch self.colorSelected {
    case "blue":
      return Color.blue
    case "red":
      return Color.red
    case "green":
      return Color.green
    case "purple":
      return Color.purple
    default:
      return Color.accentColor
    }
  }


  //MODIFIERS
  public func changeColor(inputColor: Color) {
    switch inputColor {
    case Color.blue:
      self.colorSelected = "blue"
    case Color.red:
      self.colorSelected = "red"
    case Color.green:
      self.colorSelected = "green"
    case Color.purple:
      self.colorSelected = "purple"
    default:
      print("Cannot change color!")
      self.colorSelected = nil
    }
  }
}
