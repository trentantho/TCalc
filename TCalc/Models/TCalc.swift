import SwiftData


@Model
final class TCalc {
  init() {
    calcValue = 0.0
  }

  private var calcValue: Double
}
