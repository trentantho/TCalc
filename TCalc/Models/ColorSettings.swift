import SwiftData
import SwiftUI

@Model
class ColorSettings {
  init () {
    self.selectedColor = "accent"
  }


  // VARIABLES
  private var selectedColor: String

  @Transient
  private let colorOptions: [String:Color] = ["blue":Color.blue, "red":Color.red, "green":Color.green, "purple":Color.purple]


  // ACCESSORS
  public func getColor() -> Color {
    if let returnColor = colorOptions[selectedColor] {
      return returnColor
    } else {
      print("!!! Cannot get user settings color! Using accent color...")
      return Color.accentColor
    }
  }


  //MODIFIERS
  public func changeColor(inputColor: String) {
    if colorOptions.keys.contains(inputColor) {
      self.selectedColor = inputColor
    } else {
      print("!!! Cannot change user settings color! Using accent color...")
      self.selectedColor = "accent"
    }
  }
}
