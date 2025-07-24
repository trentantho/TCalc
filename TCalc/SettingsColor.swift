import SwiftData
import SwiftUI

@Model
class SettingsColor {
  init () {
    self.colorSelected = "accent"
  }


  // VARIABLES
  private var colorSelected: String

  @Transient
  private let colorOptions: [String:Color] = ["blue":Color.blue, "red":Color.red, "green":Color.green, "purple":Color.purple]


  // ACCESSORS
  public func getColor() -> Color {
    if let returnColor = colorOptions[colorSelected] {
      return returnColor
    } else {
      print("!!! Cannot get user settings color! Using accent color...")
      return Color.accentColor
    }
  }


  //MODIFIERS
  public func changeColor(inputColor: String) {
    if let returnColor: Color = colorOptions[inputColor] {
      colorSelected = inputColor
    } else {
      print("!!! Cannot change user settings color! Using accent color...")
      colorSelected = "accent"
    }
  }
}
