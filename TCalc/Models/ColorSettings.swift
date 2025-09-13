import SwiftUI


class ColorSettings {
  init () {
    self.selectedColor = "blue"
  }


  // VARIABLES
  private var selectedColor: String

  private let colorOptions: [String:Color] = ["blue":Color.blue, "red":Color.red, "green":Color.green, "purple":Color.purple]


  // ACCESSORS
  public func getColor() -> Color {
    if let returnColor = colorOptions[selectedColor] {
      return returnColor
    } else {
      print("!!! Cannot get user settings color!")
      return Color.blue
    }
  }


  //MODIFIERS
  public func changeColor(inputColor: String) {
    if colorOptions.keys.contains(inputColor) {
      self.selectedColor = inputColor
    } else {
      print("!!! Cannot change user settings color!")
      self.selectedColor = "blue"
    }
  }
}
