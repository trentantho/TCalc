import SwiftData


@Model
final class Calculator {
  init() {
    calcValue = 0.0
    calcOperation = nil
  }

  // VARIABLES & CONSTANTS
  private var calcValue: Double
  private var calcOperation: String?

  @Transient
  private let operationList: [String] = ["add", "sub", "mult", "div", "sq", "sqrt"]


  // FUNCTIONS
  func calc(userOperation: String, userValue: Double) -> Bool {
    switch userOperation {
    case "add":
      calcValue += userValue
      return true
    case "sub":
      calcValue -= userValue
      return true
    case "mult":
      calcValue *= userValue
      return true
    case "div":
      calcValue /= userValue
      return true
    case "sq":
      calcValue *= calcValue
      return true
    default:
      return false
    }
  }


}
