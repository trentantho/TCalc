import SwiftData


@Model
final class CalcBrain {
  init() {
    calcValue = 0.0
  }

  private var calcValue: Double
}
